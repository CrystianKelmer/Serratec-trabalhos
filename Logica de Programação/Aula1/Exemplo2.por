/* Uma empresa paga R$10.00 por hora normal trabalhada e R$ 15.00 por hora extra.Escreva um algoritmo que leia o total de horas normais trabalhadas e o total de horas extras trabalhadas por umempregado em um ano e calcule o salário anual deste trabalhador.
 */

programa
{
	
	funcao inicio()
	{
		real horaNormal, horaExtra, salario
		escreva("Digite o número de horas normais trabalhadas no ano: ")
		leia(horaNormal)
		escreva("Digite o número de horas extras trabalhadas no ano: ")
		leia(horaExtra)

		salario = (horaNormal*10.00)+(horaExtra*15.00)

		escreva("Seu salário anual é de: R$", salario)
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */