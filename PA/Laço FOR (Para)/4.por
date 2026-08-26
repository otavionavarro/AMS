programa
{
	funcao inicio()
	{
		inteiro numero, i, centena, dezena, unidade

		para (i = 1; i <= 100; i++) {

		escreva("Digite um número entre 100 e 999: ")
		leia(numero)
		se (numero >= 100 ou numero <= 900) {
			pare
			}
			escreva("Número inválido, apenas entre 100 e 999.")
		}

		centena = numero / 100
		dezena = (numero / 10) % 10
		unidade = numero % 10

    escreva("O número separado fica: ")
		escreva("\nCentena: ", centena)
		escreva("\nDezena: ", dezena)
		escreva("\nUnidade: ", unidade)
	}
}