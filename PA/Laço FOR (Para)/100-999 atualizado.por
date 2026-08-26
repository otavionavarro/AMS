programa
{
	funcao inicio()
	{
		inteiro numero, centena, dezena, unidade, i

		para (i = 1; i <= 100; i++) {

		escreva("Digite um número entre 100 e 999: ")
		leia(numero)
		se (numero >= 100 ou numero <= 900) {
			pare
			}
			escreva("Número inválido.")
		}

		centena = numero / 100
		dezena = (numero / 10) % 10
		unidade = numero % 10

		escreva("Centena: ", centena, "\n")
		escreva("Dezena: ", dezena, "\n")
		escreva("Unidade: ", unidade)
	}
}