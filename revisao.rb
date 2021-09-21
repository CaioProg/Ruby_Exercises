# Exemplos da aula
puts "Aula 4"
puts 1 + 2
puts 5.0 / 2
puts 5 / 2

teste = 10
puts "teste + 1 = #{teste + 1}"
puts "Aula 5 - Array"
lista = [100, 102.50, "Teste"]

nomes = "Rafael,Roberto"
nomes.split(",")
puts "#{nomes}" #["Rafael", "Roberto"]
puts "Aula 6 - Hash"

lista = []
lista << "a"
lista << "b"
puts "#{lista}"
# ["a", "b"]

#################################

hash = { a: 2 }
puts hash[:a]
# 2

hash[:b] = 3
puts hash
# { a: 2, b: 3}
puts "Aula 7 - Conditionals"

a = 5
if a < 10
  puts "menor que 10"
else
  puts "maior que 10"
end

#################################

nome = "Rafael"
if nome != "Roberto"
  puts "não é o Roberto!"
end

puts "não é o Roberto!" if nome != "Roberto"

#################################

cor = "Vermelho"
unless cor == "Preto"
  puts "Essa cor não é preto!"
end

#################################

bebida = "Refrigerante"
comida = "Hambuger"

if bebida == "Refrigerante" and comida == "Hambuger"
  puts "Excelente combinação"
elsif bebida == "Nescau" and comida == "Pão com ovo"
  puts "Belo café da manhã"
else
  puts "Não conheço essa combinação"
end
puts "Aula 8 - Each"

lista = [1,2,3,4,5]
lista.each do |numero|
  puts numero
end

#################################

dicionario = { a: "A", b: "Be", c: "Ce", d: "De" }
dicionario.each do |chave, valor|
  puts "a chave #{chave} é #{valor}"
end

#################################

lista = [1,2,3,4,5]
lista.each do |numero|
  break if numero > 3
  puts numero
end
# 1, 2, 3

#################################

lista = [1,2,3,4,5]
lista.each do |numero|
  next if numero == 3
  puts numero
end
# 1, 2, 4, 5
puts "Aula 9 - Times and Range"

10.times do
  puts "Imprimir 10 vezes!"
end

#################################

10.times do |numero|
  puts "Contando: #{numero}..."
end

#################################

4.times do |n|
  puts n
  if n % 2 == 0
    puts "PAR"
  end
end
# 0
# PAR
# 1
# 2
# PAR
# 3

#################################

(50..55).each do |numero|
  puts numero
end
# 50 51 52 53 54 55

#################################
puts "Aula 10 - While"

numero = 1

while numero < 50 do
  puts numero
  numero = numero + 1
end

# 1 2 3 4 5 ...... 47 48 49

#################################

nome = "rafael"
nome_digitado = ""

while nome != nome_digitado
  puts "Digite um nome:"
  nome_digitado = gets.chomp
end
puts "Acertou!"