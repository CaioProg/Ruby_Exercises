# Peça para o usuário digitar 10 números. Seu programa deve retornar
# uma mensagem dizendo qual foi o maior número digitado. (Exemplo: O maior número é 59)
puts "Exercício 1:"

maior_numero = 0

10.times do
  puts "Digite um número:"
  numero = gets.to_i

  if maior_numero < numero
    maior_numero = numero
  end
end

puts "O maior número digitado é: #{maior_numero}"





# Faça uma calculadora simples, para somar ou diminuir dois números.
# Pergunte ao usuário o primeiro número,
# o segundo número e pergunte se a operação vai ser soma ou subtracao e retorne o valor.
puts "Exercício 2:"

puts "/////////Caluladora Básica/////////"

puts "Digite o primeiro número: "
numero1 = gets.to_i

puts "Digite o segundo número: "
numero2 = gets.to_i

puts "Digite qual a operação desejada(IMPORTANTE A DIGITAÇÃO EXATA): soma, subtração, divisão ou multiplicação."
tipo_opt = gets.chomp

    if tipo_opt == "soma"
        puts "Resultado: #{numero1 + numero2}"
    elsif tipo_opt == "subtração"
        puts "Resultado: #{numero1 - numero2}"
    elsif tipo_opt == "divisão"
        puts "Resultado: #{numero1 / numero2}"
    elsif tipo_opt == "multiplicação"
        puts "Resultado: #{numero1 * numero2}"
    else
        puts "Operação não reconhecida: #{tipo_opt}"
    end





# Jogo da adivinhação da senha: Crie uma variável (vai ser a senha secreta) 
# com um número inteiro a ser adivinhado pelo usuário. Peça ao usuário para adivinhar o número. 
# Se ele acertar, imprima que ele acertou. Se ele errar, diga se o palpite foi maior 
# ou menor que o número secreto e pergunte novamente. 
# Continue perguntando ao usuário até o valor digitado for igual a sua senha secreta.    
puts "Exercício 3:"

puts "/////////Jogo da Adivinhação de Senha/////////"
senha_secreta = 19

while senha_secreta do
    puts "Digite um número:"
    senha_digitada = gets.to_i

    if senha_digitada > senha_secreta
        puts "Seu palpite foi maior"
    elsif senha_digitada < senha_secreta
        puts "Seu palpite foi menor"
    elsif senha_digitada == senha_secreta
        puts "Parabéns, você acertou a senha!!!"
        break
    else 
        puts "Verifique o valor digitado e tente novamente!"
    end
end





# Considerando o código abaixo:
# Crie uma única lista contendo todos as comidas e imprima seu valor.
puts "Exercício 4:"

comidas = {
  massas: ["Espageti", "Fusili", "Parafuso"],
  frutas: ["Banana", "Morango", "Abacaxi", "Pessego", "Uva"],
  legumes: ["Cenoura", "Beterraba", "Batata"],
  graos: ["Feijao", "Ervilha", "Lentilha"],
  folhas: ["Alface", "Agriao", "Espinafre"]
}

todas = []

comidas.each do |chave, valor|
  # chave: massas, valor: [espageti, fusili]...
  # chave: frutas, valor: [banana, ...]

  valor.each do |comida|
    todas << comida
  end
end

puts "#{todas}"





# Considerando o código abaixo:
# Imprima uma lista com todos os valores que são comuns a lista1 e lista2
puts "Exercício 5:"

lista1 = [1,3,6,7,8,12,15,22,24,29,30,35,42,46,55,76,78,83,89,95,102,107,114]
lista2 = [3,5,9,12,13,17,29,31,35,40,51,64,69,71,75,78,81,83,90,96,100,105,107]

lista_comum = []

lista1.each do |numero_lista1|
  lista2.each do |numero_lista2|
    if numero_lista1 == numero_lista2
      lista_comum << numero_lista1
      break
    end
  end
end

puts "#{lista_comum}"





# Imprima os números de 1 a 100. Se o número for múltiplo de 2,
# imprimir ping ao invez do número. Se o número for múltiplo de 5, imprimir pong ao invez do número.
# Se for multiplo de 2 e de 5, imprimir pingpong.
# Exemplo:

#1
#ping
#3
#ping
#pong
#ping
#7
#ping
#9
#pingpong
puts "Exercício 6:"

(1..100).each do |numero|
    if numero % 2 == 0 and numero % 5 == 0
      imprimir = "pingpong"
    elsif numero % 2 == 0
      imprimir = "ping"
    elsif numero % 5 == 0
      imprimir = "pong"
    else
      imprimir = numero
    end
  
    puts imprimir
  end
