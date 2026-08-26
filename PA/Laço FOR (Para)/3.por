programa {
  funcao inicio() {
    inteiro n, maior, quantidade, vezes
    vezes = 0
    quantidade = 0
    maior = 0
    escreva("Digite a quantidade de números que irá digitar: ")
    leia(quantidade)
    para (inteiro i = 1; i <= quantidade; i++) {
    escreva("Digite um número: ")
    leia(n)

    se (n > maior)
    {
        maior = n
        vezes = 1
      }

    senao se(i == 1) {
      maior = n
      vezes = 1
    } senao se(n == maior) {
      vezes = vezes + 1
    }
    }

    escreva("O maior número é: ", maior)
    escreva("\nA quantidade o número maior foi lido: ", vezes)
  }
    
}