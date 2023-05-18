programa
{
	
	funcao inicio()
	{
	inteiro ano, semestre
		escreva("Digite o ano:")
		leia(ano)

		escreva("Digite o semestre:")
		leia(semestre)
		
		mensagem(ano, semestre)
		
	}
		
	//funcao com parâmetro
	funcao mensagem(inteiro ano, inteiro semestre){
		escreva("***************\n")
		escreva("***Serratec" + ano+ "/"+ semestre+"****\n")
		escreva("***************")
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 307; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */