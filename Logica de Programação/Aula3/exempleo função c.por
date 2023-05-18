programa
{
	
	funcao inicio()
	{
	     cadeia nome, senha
		escreva("Entre com o nome:\t")
		escreva("Entre com senha:\t")

		leia(nome)
		leia(senha)

		nome ="Jose"
		senha ="123"

 		 //As linguagens são case sesitive(diferencia maiusculo do minuscolo)
 		 
		se(nome == "Maria" e senha =="123") {
			 escreva("Bem vindo ao Sistema")
			     // se tiver so uma linha de comando não precisa do {} se tiver mais se usa.
		}senao{
			escreva("Acesso Negado!")	
		}
			//> < >= <=  != ==

			escreva((20>10)ou(1>2)) //verdadeiro
			escreva(nao(5>10)ou(1>2)) //falso
			
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 574; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */