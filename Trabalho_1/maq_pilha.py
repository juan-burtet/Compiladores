#!/usr/bin/python
# -*- coding: utf-8 -*-

# Imports
import sys

# Arquivo texto
text = sys.argv[1]

# Pilha usada para as operações
stack = []

# Cortando linha por linha
text = text.split('\n')

# For em cada linha
for line in text:
	
	# Se for Tamanho 2, é operação PUSH NUM
	if len(line) == 2:
		
		# Pega o número
		num = line[1]

		# Adiciona ao fim da pilha
		stack.append(num)
		
	# É outra operação
	else:
		
		# Operação de Print
		if line == 'PRINT':

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
			if line == 'ADD':
				stack.append(a + b)
			
			# Operação SUB	
			elif line == 'SUB':
				stack.append(a - b)

			# Operação MULT
			elif line == 'MULT':
				stack.append(a * b)

			# Operação DIV
			elif line == 'DIV':
				stack.append(a / b)
		