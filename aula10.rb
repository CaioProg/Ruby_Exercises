# Considerando o código abaixo:
# O método segundos recebe um valor em minutos como parametro e
# retorna esse valor em segundos. Escreva o método segundos de forma que ele 
# retorne os valores corretamente, como representado acima.
puts "Exercício 1:"

def segundos(minutos)
    minutos * 60
end

puts segundos(10) # Imprime 600
puts segundos(75) # Imprime 4500





# Utilizando métodos, implementar o exercício 4 da aula 7A, 
# calculando o IMC de cada paciente.
# Considerando o código abaixo:
# Escreva a função (método) imc que calcula o imc de cada paciente e imprime o resultado.
# Nota: Formula do IMC: Peso / (Altura metros * Altura metros)
# IMC:
# <18.5 - Abaixo do peso
# 18.5 ~ 24.99 - Normal
# > 25 - Acima do peso
# > 30 - Obeso
puts "Exercício 2:"

def imc(peso, altura, nome)
    imc = peso / (altura * altura)
    
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
    
end

imc(200.2, 1.75, "Mario")
imc(65.6, 1.65, "Roberta")
imc(79.7, 1.77, "Pedro")
imc(35.3, 1.60, "Ana")
imc(67.0, 1.84, "Caio")





# Utilizando métodos, implementar o exercício 4 da aula 8A, 
# para buscar telefones em um agenda telefônica.
# Considerando o código abaixo:
# Escreva uma função/método procurar_numero que receba a agenda
# telefônica e o nome como parâmetro, e retorne o telefone.
puts "Exercício 3:"

agenda = [{nome: "Rafael", telefone: "5566"},
          {nome: "Rodolfo", telefone: "9988"}, 
          {nome: "Romário", telefone: "2299"},
          {nome: "Ana", telefone: "1634"}, 
          {nome: "Rodrigo", telefone: "9533"}]
          

def procurar_numero(agenda, nome)
    agenda.each do |contato|
        # puts contato
        return contato[:telefone] if contato[:nome] == nome
    end
end

puts procurar_numero(agenda, "Rodrigo")
puts procurar_numero(agenda, "Ana")