programa
{
	
	funcao inicio()
	{
		inteiro numeros[3][2], soma=0

		para(inteiro linha=0; linha <3; linha++){
			para(inteiro coluna=0; coluna < 2; coluna++){
				escreva("Digite um número:")
				leia(numeros[linha][coluna])
				soma = soma+ numeros[linha][coluna]
		
			}
		}
		escreva("total:", soma)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 314; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */