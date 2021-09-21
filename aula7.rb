# Escreva um código que receba um valor em minutos (digitado pelo usuário)
# e imprima o valor em segundos.
puts "Exercício 1:"

puts "Digite o valor em minutos a ser convertido para segundos:"
min = gets.to_i 

puts "Valor em segundos: #{min * 60}s"





# Escreva um código que receba o nome de uma fruta.
# Se o nome for morango você deve imprimir: Suco de morango é bom!.
# Se o nome for manga você deve imprimir: Sorvete de manga é bom!.
# Para todas as demais frutas você deve imprimir o nome da fruta e
# o texto parece ótima(o)! (Exemplo: “Banana parece ótima(o)!”)
puts "Exercício 2:"

puts "Digite o nome de um fruta: "
fruta = gets.chomp.capitalize 

    if fruta == "Morango"
        puts "Suco de morango é bom!"
    elsif fruta == "Manga"
        puts "Sorvete de manga é bom!"
    else
        puts "#{fruta} parece ótima(o)!"
    end
    




# Escreva um código utilizando while que imprima a frase Estou utilizando while 8 vezes!
puts "Exercício 3:"   

total = 0

while total < 8 do
  total = total + 1
  puts "Estou utilizando while"
end





# Quantas vezes eu posso dobrar o número 2 (exemplo: 2*2*2*2*2)
# para que o valor fique menos de 10 milhões? (10.000.000)?
# NOTA: Usar while
puts "Exercício 4:"

resposta = 1
total = 2

while total < 10000000
  resposta = resposta + 1
  total = total * 2
end

puts resposta - 1 #23





# Considerando o código abaixo:

# senha = "A4B5"
#Escreva um código que pergunte a senha para o usuário.
# Enquanto a senha digitada não for igual a senha acima, continue perguntando a senha.
# Quando o usuário descobrir a senha, imprima Senha descoberta!.
# DICA: Utilize while e gets
puts "Exercício 5:"

senha = true

while senha do
    puts "Digite sua senha:"
    senha = gets.chomp

    if senha != "A4B5"
        puts "SENHA INCORRETA"
    elsif senha == "A4B5"
        puts "SENHA CORRETA!"
        break
    end
end
