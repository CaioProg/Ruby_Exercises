# Considerando o código abaixo:
# Colocar a classe Calculadora aqui em cima!
# Criar uma classe chamada Calculadora e um método chamado ao_quadrado, que calcule o valor quadrado de um número.
puts "Exercício 1:"

class Calculadora
    def self.ao_quadrado (numero)
        numero * numero
    end
end
    puts Calculadora.ao_quadrado(3)





# Considerando o código abaixo:
# Implemente 3 diferentes classes CarroAzul, CarroPreto, CarroBranco.
# Essas 3 classes, vão ter o mesmo método de instância cor retornando a respectiva cor.
puts "Exercício 2:"

class CarroAzul
    def cor
      "Azul"
    end
  end
  
  class CarroPreto
    def cor
      "Preto"
    end
  end
  
  class CarroBranco
    def cor
      "Branco"
    end
  end
  
  carro1 = CarroAzul.new
  carro2 = CarroPreto.new
  carro3 = CarroBranco.new
  
  [carro1, carro2, carro3].each do |carro|
    puts carro.cor
  end





# Utilizando classes, implementar o exercício 2 da aula 13A,
# calculando o IMC de cada paciente.
# Escreva a uma classe Imc que implemente o método calcular 
# que calcula o imc de cada paciente e imprime o resultado.
# Nota: Formula do IMC: Peso / (Altura metros * Altura metros)
# Considerando o código abaixo:
puts "Exercício 3:"

class Imc
    def self.calcular(peso, altura, nome)
        imc = peso / (altura * altura)
        
        if imc > 30
            puts "#{nome} está Obeso(a)"
        elsif imc > 25
            puts "#{nome} está acima do peso"
        elsif imc > 18.5 and imc < 24.99
            puts "#{nome} está com o peso normal"
        elsif imc < 18.5
            puts "#{nome} está abaixo do peso"
        else
            puts "Algo está errado!"
        end
    end
end

Imc.calcular(200.2, 1.75, "Mario")
Imc.calcular(65.6, 1.65, "Roberta")
Imc.calcular(79.7, 1.77, "Pedro")
Imc.calcular(35.3, 1.60, "Ana")





# Utilizando classes, implementar o exercício 3 da aula 13A, para buscar telefones em um agenda telefonica.
# Os dados são:
# [{nome: "Rafael", telefone: "5566"}, {nome: "Rodolfo", telefone: "9988"},
# {nome: "Romário", telefone: "2299"}, {nome: "Ana", telefone: "1634"},
# {nome: "Rodrigo", telefone: "9533"}]
# Agenda.dados deve retornar o array de dados (disponível acima)
# Agenda.procurar_numero deve retornar o número de uma pessoa na agenda
# Considerando o código abaixo:
puts "Exercíco 4:"

class Agenda
    def self.dados
       [{nome: "Rafael", telefone: "5566"},
        {nome: "Rodolfo", telefone: "9988"},
        {nome: "Romário", telefone: "2299"},
        {nome: "Ana", telefone: "1634"},
        {nome: "Rodrigo", telefone: "9533"}]
    end

    def self.procurar_numero( nome)
        Agenda.dados.each do |contato|
            return contato[:telefone] if contato[:nome] == nome
        end
    end
end

puts Agenda.dados
puts Agenda.procurar_numero("Rodrigo")
puts Agenda.procurar_numero("Ana")