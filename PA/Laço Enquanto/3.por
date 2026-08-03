programa {
  funcao inicio() {
    inteiro n, maior, menor

    escreva("Digite um número: ")
    leia(n)
    enquanto (n > 0) {
      escreva("Deseja continuar? (Digite um número) : ")
    leia(n)
    }
    se (n > maior)
            {
                maior = n
            }

            se (n < menor)
            {
                menor = n
            }
    
    escreva("\nO maior número é: ", maior )
    escreva("\nE o menor número é: ", menor )
  }
}
