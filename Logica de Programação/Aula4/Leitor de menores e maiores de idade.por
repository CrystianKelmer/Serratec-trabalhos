programa
{ //Leia a idade de uma determinada quantidade de pessoas que também deverá ser informada pelo usuário e diga no final quantos são de maior e menor idade.
	//ps(pessoas) id(idade) maior(+18) menor(-18)
	funcao inicio()
	{
		inteiro ps, id, maior18=0, menor18=0
		 escreva("Digite a quantidade de pessoas:")
		 leia(ps)
		 
		para(inteiro i=0; i < ps; i++){
		 escreva("Idade:")
		 leia(id)

		 se(id >=18){
		 	maior18++
		 }senao{
		 	menor18++	
		}		

		}
		escreva("Total maior 18 anos:", maior18, "\n")
		escreva("Total menor 18 anos:", maior18)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 562; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */