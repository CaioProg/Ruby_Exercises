# Utilizando a função .times, escreva um código que imprima 
# todos os números de 1 até 21, exceto múltiplos de 3.
puts "Exercício 1:"

21.times do |n|
		n = n + 1
		if n % 3 == 0
			next
		else
			puts n
	end
end





# Cálculo de potência usando .times:
# Calcule e imprima o valor de 4 elevado a 5, usando .times
puts "Exercício 2:"

resultado = 4
4.times do
  resultado = resultado * 4
end
puts resultado





# Crie uma variável com seu nome e uma variável com sua idade.
# Escreva um código que imprima cada ano de sua idade a frase Fulano já teve 1 ano(s) ou Fulano tem 1 ano
# Exemplo:

# nome = "Fulano"
# idade = 3
# Fulano já teve 1 ano(s)
# Fulano já teve 2 ano(s)
# Fulano tem 3 ano(s)
puts "Exercício 3:"

nome = "Caio"
idade = 19


(1..idade).each do |i|
	if i == idade
		puts "#{nome} tem #{i} ano(s)"
	else
		puts "#{nome} já teve #{i} ano(s)"
	end
end





# Considerando a variável abaixo:
# letras = ["A", "B", "C"]
# Escreva um código que imprima em cada linha a sequência: A1, A2, A3, A4, A5, B1, B2, B3, B4, B5, C1, C2, C3, C4, C5
# NOTA: Você pode combinar o uso de .times e .each aqui.
puts "Exercício 4:"

letras = ["A", "B", "C"]

letras.each do |letra|
  5.times do |numero|
    puts "#{letra}#{numero + 1}"
  end
end





# Considerando a variável abaixo:
# inicio = 32
# Imprima todos os números desde a variável inicio até o número 51.
puts "Exercício 5:"

inicio = 32

(inicio..51).each do |x|
	puts x
end





# Considerando a variável abaixo:

# temperatura_min_celsius = 10
# temperatura_max_celsius = 40
# Utilizando ranges, escreva um código que imprima cada uma das temperaturas
# junto com uma descrição baseado na regra abaixo:

# <=19 Imprimir “frio”
# >=20 e <=29 Imprimir “agradável”
# >=30 imprimir “quente”
puts "Exercício 6:"

temperatura_min_celsius = 10
temperatura_max_celsius = 40

(temperatura_min_celsius..temperatura_max_celsius).each do |t|
	if t >=30 
		puts "#{t}ºC = quente"
	elsif t >=20 and t <=29
		puts "#{t}ºC = agradável"
	elsif t <=19
		puts "#{t}ºC = frio"
	end
end





# Considerando uma sequência de 1 até 3, veja o exemplo abaixo:

# 1
# 1. Rafael
# 2
# 1. Rafael
# 2. Rafael
# 3
# 1. Rafael
# 2. Rafael
# 3. Rafael

# Escreva um código que imprima ,linha a linha, uma sequência de 1 até 10.
# Entre cada número da sequência, imprima o seu nome a quantidade de vezes referente ao
# número que você imprimiu. (Veja o exemplo acima e faça o mesmo de 1 até 10)
puts "Exercício 7:"

nome = "Caio"
n1 = 1
n2 = 10

(n1..n2).each do |s|
	puts s 
	s.times do |y|
		puts "#{y + 1}. #{nome}"
	end
end
