programa
{
	
	funcao inicio()
	{
		inteiro a = 100
		incrementa(a)
		escreva("O valor do incremento é:", incrementa(a), "\n")
		escreva("O valor da variável a é:", a,"\n")
	}
     // O & aponta para uma área de memória
	//função com passagem de parâmetro por referência
	// o "i" recebe o valor (que é 100)
	funcao inteiro incrementa(inteiro &i){    
		i = i + 10	// <-- o i recebe ele msm 
		retorne i
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 211; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */