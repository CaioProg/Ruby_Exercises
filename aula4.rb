# == Igual
# != Diferente
# > Maior que
# =< Maior ou igual
# < Menor que
# <= Menor ou igual


# Utilizando o código com a variável abaixo:
# peso = 50
# Se a variável peso é maior ou igual à 70: imprimir o texto “Está acima do peso.”
# Se a variável peso for menor ou igual que 40, imprimir “Está abaixo do peso”
# Se a variável estiver entre 40~70, imprimir “Está no peso ideal”
# NOTA: Para verificar se o código está correto, execute mais de uma vez, trocando o valor do peso para 100 e 30.
puts "Exercício 1:"

peso = 50

if peso >= 70
    puts "Está acima do peso."
elsif peso <= 40
    puts "Está abaixo do peso."
else 
    puts "Está no peso ideal!"
end





# Considerando o código abaixo:
# valor = 10
# if valor > 10
#  taxa = 5
# else
#  taxa = 2
# end
# puts taxa
# Converta o código acima para uma única linha.
puts "Exercício 2:"

valor = 10
taxa = valor > 10 ? "taxa = 5" : "taxa = 2"
puts taxa

puts valor > 10 ? 5 : 2 # Outra maneira de ser feito





=begin
Considerando os exemplos abaixo:

exemplo = {
  valor: 9
  taxa: 5
}
exemplo = {
  valor: 15
  taxa: 15
}
exemplo = {
  valor: 14
  taxa: 25
}
Escreva um código (utilizando apenas um bloco de if/elsif/else) que verifique o hash exemplo se:

Se valor ou taxa for maior que 15, imprimir “Muito alto”
Se valor e taxa somados forem maior ou igual a 30, imprimir “Soma muito alta”
NOTA: Você deve utilizar uma váriavel de exemplo por vez. Utilizando o mesmo código e verificando se o retorno esta correto.

NOTA2: Você não pode criar nenhuma variável adicional.
=end
puts "Exercício 3:"

# exemplo = {
#   valor: 9,
#   taxa: 5
# }
# exemplo = {
#   valor: 15,
#   taxa: 15
# }
exemplo = {
  valor: 14,
  taxa: 25
}

if exemplo[:valor] > 15 or exemplo[:taxa] > 15
    puts "Muito alto"
elsif (exemplo[:valor] + exemplo[:taxa]) >= 30
    puts "Soma muito alta"
end





=begin
Você precisa escrever um código para calcular IMC corporal.

IMC:
<18.5 - Abaixo do peso
18.5 ~ 24.99 - Normal
> 25 - Acima do peso
> 30 - Obeso
Seus pacientes são:

Mario - 200.2kg - 1,75m
Roberta - 65.6kg - 1,65m
Pedro - 79.7kg - 1,77m
Ana - 35.3kg - 1,60m
Formula do IMC: Peso / (Altura metros * Altura metros)

Imprima o resultado correto do IMC para cada paciente, utilizando o mesmo código, apenas mudando as variáveis.
=end
puts "Exercício 4:"

# nome = "mario"
# peso = 200.2
# altura = 1.75

# nome = "roberta"
# peso = 65.6
# altura = 1.65

# nome = "pedro"
# peso = 79.7
# altura = 1.77

nome = "ana"
peso2 = 35.3
altura = 1.60

imc = peso2 / (altura * altura)

if imc > 30
    resultado = "Obeso(a)"
elsif imc > 25
    resultado = "Acima do peso"
elsif imc > 18.5 and imc < 24.99
    resultado = "Normal"
elsif imc < 18.5
    resultado = "Abaixo"
else
    resultado = "Algo está errado!"
end

puts "#{nome} está: #{resultado}"



