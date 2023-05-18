programa
{
	
	funcao inicio()
	{
		real nota1, nota2
		escreva("Digite nota1:")
		leia(nota1)

		escreva("Digite a nota2:")
		leia(nota2)

		imprimir(media(nota1,nota2))
	//escreva("A média é:", (media(nota1,nota2)

	}
			//função com retorno do tipo real
		funcao media(real nota1, real nota2){
			 retorne (nota1+nota2)/2
		}

		funcao imprimir(real m){
			escreva("****************")
			escreva("A media é:",m)
		}
}

/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 98; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */