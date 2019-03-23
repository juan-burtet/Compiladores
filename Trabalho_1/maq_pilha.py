#!/usr/bin/python
# -*- coding: utf-8 -*-

# Imports
import sys

# Arquivo texto
text = sys.argv[1]

# Abrindo o arquivo
text = open(text, 'r').read()

# Pilha usada para as operações
stack = []

# Cortando linha por linha
text = text.split('\n')

# For em cada linha
for line in text:

	# Dividi por espaço
	line = line.split(' ')

	# Se for Tamanho 2, é operação PUSH NUM
	if len(line) == 2:
		
		# Pega o número
		num = line[1]

		# Adiciona ao fim da pilha
		stack.append(int(num))
		
	# É outra operação
	else:
		
		# Operação de Print
		if line[0] == 'PRINT':

			# Retira o ultimo da pilha
			a = stack.pop()

			# printa ele na tela
			print(a)

			# Adiciona novamente na pilha
			stack.append(a)

		# Operações que usam dois números da pilha
		else:	

			# Retorna os dois ultimos números da pilha
			b = stack.pop()
			a = stack.pop()
			
			# Operação ADD
			if line[0] == 'ADD':
				stack.append(a + b)
			
			# Operação SUB	
			elif line[0] == 'SUB':
				stack.append(a - b)

			# Operação MULT
			elif line[0] == 'MULT':
				stack.append(a * b)

			# Operação DIV
			elif line[0] == 'DIV':
				stack.append(a / b)
		