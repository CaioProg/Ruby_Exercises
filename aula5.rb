# Considerando essa lista abaixo:
# peso_em_kilos = [10,23,44,95]
# Escreva um programa que imprima individualmente cada peso da lista em gramas ao invés de kilos.
#DICA: 1kg = 1000g
puts "Exercício 1:"

peso_em_kilos = [10,23,44,95]

peso_em_kilos.each do |peso|
  puts "#{peso * 1000}g"
end





# Utilizando o código com a variável abaixo:
# lista = "Rafael!Roberto!Rodolfo!Marcos!Rodrigo!Jorge!Lucas!Carlos!Dario!Ronaldo!Luis!Moises!Tulio!Armando!Beto!Mathias"
# Escreva um programa que imprima a messagem: “Oi, nome!”, onde nome seja cada nome individualmente da lista acima!
# DICA: Utilize .split
puts "Exercício 2:"

lista = "Rafael!Roberto!Rodolfo!Marcos!Rodrigo!Jorge!Lucas!Carlos!Dario!Ronaldo!Luis!Moises!Tulio!Armando!Beto!Mathias"

lista = lista.split("!")

lista.each do |nome|
    puts "Oi,#{nome}!"
end





# Utilizando o código com a variável abaixo:
# exemplo = {a: 1, b: 2, c: 3, d: 7, e: 9}
# Escreva um programa que calcule e imprima o resultado da soma de a + c + e ?
# NOTA: Você deve usar o .each e next
# DICA: Você talvez precise criar uma variável soma com o valor inicial zero, para ir somando os valores desejados.
puts "Exercício 3:"

exemplo = {a: 1, b: 2, c: 3, d: 7, e: 9}
soma = 0
exemplo.each do |chave, valor|
  if chave == :b or chave == :d
    next
  end
  soma = soma + valor
end
puts soma
# 13





# Utilizando o código com a variável abaixo:
# agenda = [{nome: "Rafael", telefone: "5566"}, {nome: "Rodolfo", telefone: "9988"}, {nome: "Romário", telefone: "2299"}]
# procurar_por = "Rodolfo"
# Considerando a pessoa selecionada na variável procurar_por, imprima o nome e telefone desse contato.
# NOTA: Você deve usar o .each e next e break
puts "Exercício 4:"

agenda = [{nome: "Rafael", telefone: "5566"}, {nome: "Rodolfo", telefone: "9988"}, {nome: "Romário", telefone: "2299"}]
procurar_por = "Rodolfo"

agenda.each do |contato|
    if contato[:nome] == procurar_por
        puts "Nome: #{contato[:nome]} - Telefone: #{contato[:telefone]}"
        break
    else
        next
    end

    puts "ESSA LINHA NÃO VAI SER EXECUTATDA NUNCA POR CAUSA DO NEXT/BREAK"
end





# Utilizando o código com a variável abaixo:
# carnes = ["picanha", "costela", "alcatra", "maminha"]
# pontos = ["mal passada", "ao ponto", "bem passada"]
# Considerando as variáveis acima, escreva um programa que imprima em linhas diferentes todas as opções possíveis de carne e ponto. 
# Exemplo: “picanha mal passada” “picanha ao ponto” “picanha bem passada” …
# NOTA: Você deve usar o .each

carnes = ["picanha", "costela", "alcatra", "maminha"]
pontos = ["mal passada", "ao ponto", "bem passada"]

carnes.each do |carne|
  pontos.each do |ponto|
    puts "#{carne} #{ponto}"
  end
end