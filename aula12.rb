# Utilizando attr_reader e/ou attr_writer e/ou attr_accessor 
# sempre que puder, crie uma classe Pessoa que funcione com o código abaixo:
# NOTA: Os métodos nome e sobrenome não devem ser acessíveis. Apenas nome_completo
puts "Exercício 1:"

class Pessoa
    attr_writer :nome, :sobrenome
    # nome, sobrenome não podem ser accessor, pois o exercício
    # pede para que Pessoa.new.nome não seja exposto
  
    attr_accessor :idade
  
    def nome_completo
      "#{@nome} #{@sobrenome}"
    end
  end
  
  roberto = Pessoa.new
  
  roberto.idade = 50
  roberto.idade # 50
  
  roberto.nome = "Roberto"
  roberto.sobrenome = "da Silva"
  
 # roberto.nome #NoMethodError (undefined method `nome'
 # roberto.sobrenome #NoMethodError (undefined method `sobrenome'
  
  roberto.nome_completo # "Roberto da Silva"





# Crie uma classe Produto com atributos nome e preco.
# Crie também uma classe Carrinho com atributo produto.
# A classe carrinho deve implementar um método total e 
# calcular quanto custa o total baseado nos produtos que foi adicionado.
# Faça as classes no código abaixo, em seguida execute o exercício.
puts "Exercício 2:"

class Produto
    attr_reader :nome, :preco
  
    def initialize(nome, preco)
      @nome = nome
      @preco = preco
    end
  end
  
  class Carrinho
    attr_accessor :produtos
  
    def initialize
      @produtos = []
    end
  
    def total
      total = 0
      produtos.each do |produto|
        total += produto.preco
      end
      total
    end
  end
  
  carrinho_compras = Carrinho.new
  carrinho_compras.produtos << Produto.new("leite", 3)
  carrinho_compras.produtos << Produto.new("nescau", 5)
  carrinho_compras.produtos << Produto.new("pão", 6)
  carrinho_compras.produtos << Produto.new("queijo", 8)
  
  carrinho_compras.total # 22





# Criar uma classe Pessoa e guardar o nome e telefone de cada pessoa.
# Criar uma classe Agenda para armazenar telefones.
# Criar um método para adicionar pessoas e um método 
# para buscar e retornar o telefone de alguma pessoa.
# Faça as classes no código abaixo, em seguida execute o exercício.  
puts "Exercício 3:"

class Pessoa
    attr_reader :nome, :telefone
  
    def initialize(nome, telefone)
      @nome = nome
      @telefone = telefone
    end
  end
  
  class Agenda
    attr_accessor :lista
  
    def initialize
      @lista = []
    end
  
    def adicionar(pessoa)
      @lista << pessoa
    end
  
    def buscar(nome)
      lista.each do |pessoa|
        return pessoa.telefone if pessoa.nome == nome
      end
      ""
    end
  end
  
  minha_agenda = Agenda.new
  minha_agenda.adicionar(Pessoa.new("Rafael", 92345567))
  minha_agenda.adicionar(Pessoa.new("Rodrigo", 99229822))
  minha_agenda.adicionar(Pessoa.new("Sofia", 97213399))
  
  minha_agenda.buscar("Rodrigo") # 99229822
  minha_agenda.buscar("Alan") # ""





# O desafio é sobre lista ligada. Crie uma classe Pessoa
# e a pessoa tem os atributos nome e best_friend (que é uma Pessoa).
# Faça a classe no código abaixo, em seguida execute o exercício.
puts "Exercício 4:"

class Pessoa
    attr_accessor :best_friend
    attr_reader :nome
  
    def initialize(nome)
      @nome = nome
    end
  end
  
  mario = Pessoa.new("Mario")
  ronaldo = Pessoa.new("Ronaldo")
  pedro = Pessoa.new("Pedro")
  romario = Pessoa.new("Romario")
  
  mario.best_friend = ronaldo
  ronaldo.best_friend = pedro
  pedro.best_friend = romario
  romario.best_friend = mario
  
  mario.best_friend.nome # Ronaldo
  mario.best_friend.best_friend.nome # Pedro
  mario.best_friend.best_friend.best_friend.nome # Romario
  mario.best_friend.best_friend.best_friend.best_friend.nome #Mario
  mario.best_friend.best_friend.best_friend.best_friend.best_friend.nome #Ronaldo