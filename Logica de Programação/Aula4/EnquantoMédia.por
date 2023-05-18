programa
{
	/*Fazer um algoritmo para que seja lida uma determinada quantidade de números. 
	O usuário deverá ser perguntado se deseja continuar (S/s) caso outro caracter for 
	digitado o programa será finalizadosomando o total dos números digitados e exibindo a média.*/
	funcao inicio()
	{
		inteiro numero, total=0, contador=0
		caracter confirmar='S'

		faca{	
			escreva("Número:")
			leia(numero)
			total = total + numero
			contador ++
			escreva("deseja continuar? (S/s:")
			leia(confirmar)
		}enquanto(confirmar =='S' ou confirmar == 's')
		escreva("Total:",total, "\n")
		escreva("Média:", total/contador)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 601; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {numero, 8, 10, 6}-{total, 8, 18, 5}-{contador, 8, 27, 8}-{confirmar, 9, 11, 9};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */