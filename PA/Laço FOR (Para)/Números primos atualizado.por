programa
{
	funcao inicio()
	{
		inteiro numero, i
		logico primo

		escreva("Digite um número maior que 1: ")
		leia(numero)

		primo = verdadeiro
    para (i = 2; i < numero; i++) {
      se (numero % i == 0) {
        primo = falso
        pare
      }
    }

    se (primo)
		{
			escreva("O número é primo.")
		}
		senao
		{
			escreva("O número não é primo.")
		}
		
	}
}