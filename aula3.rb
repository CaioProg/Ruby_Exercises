# Criar um hash que contenha uma chave chamada frutas com um array
# vazio e uma chave chamada verduras com um array vazio. Utilizando o <<
# adicione no array correto (fruta ou verdura) os 
# valores: banana, cenoura, uva, brocolis Imprima a lista no final.
puts "Exercício 1:"

lista = { frutas: [], verduras: [] }
lista[:frutas] << "banana"
lista[:verduras] << "cenoura"
lista[:frutas] << "uva"
lista[:verduras] << "brocolis"
puts lista





# Criar uma hash simples contendo 3 chaves principais (:a, :b, “c”).
# :a deve conter um texto. :b deve conter um número. "c" deve um float. 
# Imprimir o valor das chaves a,b,c separadamente em cada linha.
puts "Exercício 2:"

hash_simples = {a: "Texto Texto Texto.", b: 19, "c" => 19.001}

puts hash_simples[:a]
puts hash_simples[:b]
puts hash_simples["c"]





# Considerando o hash abaixo:

# exemplo = {
#  a: "cinquenta",
#  b: "dez",
#  c: [0,1,2,3,4,5,6,7,8,9]
# }
# Utilizando o hash acima, imprima na tela o texto cinquenta - 50 e em outra linha dez - 10.

# NOTA: Você deve utilizar os numeros do array de 0 a 9 para formar o 50 e o 10.
puts "Exercício 3:"

exemplo = {
  a: "cinquenta",
  b: "dez",
  c: [0,1,2,3,4,5,6,7,8,9]
}
puts "#{exemplo[:a]} - #{exemplo[:c][5]}#{exemplo[:c][0]}"
puts "#{exemplo[:b]} - #{exemplo[:c][1]}#{exemplo[:c][0]}"





# Criar e imprimir uma lista de compras com produtos de mercado, 
# para duas pessoas diferentes, utilizando um único hash para armazenar os dados. 
# Imprimir a lista de cada pessoa. 
# Exemplo Rafael vai comprar: ["produto1", "produto2"] 
# Roberto vai comprar: ["produto3", "produto4"]
puts "Exercício 4:"

lista_compras = { Rafael: ["Coca-Cola", "Chocolate"],
                  Roberto: ["Miojo", "Sabão"] 
                }

lista_compras[:Rafael] << "Detergente"
lista_compras[:Roberto] << "Salsa"


puts "Rafael vai comprar: #{lista_compras[:Rafael]}"
puts "Roberto vai comprar: #{lista_compras[:Roberto]}"





# [DESAFIO]
# Considerando o hash abaixo:
# Adicionar ao hash exemplo uma nova chave fora2 que contenha a chave dentro2 com valor 2.
# Imprima o hash exemplo no final: {:fora1=>{:dentro1=>"1"}, :fora2=>{:dentro2=>"2"}}
puts "Exercício 5:"

# Maneira 1 de ser feita
exemplo = { fora1: {dentro1: "1"}, fora2: {dentro2: "2"} }
puts exemplo

# Maneira 2 de ser feita
exemplo[:fora2] = { dentro2: "2" }
puts exemplo

# Maneira 3 de ser feita
exemplo[:fora2] = {}
exemplo[:fora2][:dentro2] = "2"
puts exemplo