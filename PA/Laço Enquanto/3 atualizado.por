programa {
  funcao inicio() {
        inteiro n, maior, menor

        escreva("Digite um número: ")
        leia(n)

        se (n >= 0)
        {
            maior = n
            menor = n

            enquanto (n >= 0)
            {
                se (n > maior)
                {
                    maior = n
                }

                se (n < menor)
                {
                    menor = n
                }

                escreva("Digite outro número: ")
                leia(n)
            }

            escreva("\nMaior número: ", maior)
            escreva("\nMenor número: ", menor)
        }
        senao
        {
            escreva("Nenhum número válido foi digitado.")
        }
    
  }
}
