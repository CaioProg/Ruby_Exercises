# Criar uma lista (array) simples contendo 3 elementos: Um número inteiro,
# um texto qualquer e um número float. Imprimir cada elemento da lista,
# separadamente em uma linha.
puts "Exercício 1:"

puts "#{[10, "Exemplo", 19.00 ]}"





# Considerando as variáveis abaixo:
# Utilizando as variáveis disponíveis, sem digitar nenhum número ou criar nenhuma
# variável adicional, imprimir o seguinte resultado: Valores: [5,150,110,2,1]
puts "Exercício 2:"

a = 5
b = 10
c = 11
d = 15
e = 20

puts "Valores: #{[a,b*d,b*c,e/b,a/a]}"





# Considerando o array abaixo:
# Imprima o texto faca utilizando o array acima.
puts "Exercício 3:"

exemplo = [["a","b"], ["c","d"], ["e", "f"]]

puts "#{exemplo[2][1]}#{exemplo[0][0]}#{exemplo[1][0]}#{exemplo[0][0]}"





# Considerando o array abaixo:
#Imprima o texto 3a2d utilizando o array acima.
puts "Exercício 4:"

exemplo = [[1,2,["a", "b"]], [3,4,["c", "d"]]]

puts "#{exemplo[1][0]}#{exemplo[0][2][0]}#{exemplo[0][1]}#{exemplo[1][2][1]}"





#Considerando a variável abaixo:
#Imprimir o resultado em uma lista. Resultado: ["banana", "morango", "abacaxi"]
puts "Exercício 5:"

texto = "banana#morango#abacaxi"

Resultado = texto.split("#")

puts "Resultado: #{Resultado}"





# Considerando a variável abaixo:
# texto = "banana#morango#abacaxi!limao!mamao"
#Imprimir o resultado em uma lista. 
#Resultado: ["banana", "morango", "abacaxi", "limao", "mamao"]
puts "Exercício 6:"

texto = "banana#morango#abacaxi!limao!mamao"

resultado1 = texto.split("#")
#puts "#{resultado1}"
resultado2 = resultado1[2].split("!")
#puts "#{resultado2}"

resultado_final = [
  resultado1[0],
  resultado1[1],
  resultado2[0],
  resultado2[1],
  resultado2[2]
]
puts "Resultado: #{resultado_final}"

