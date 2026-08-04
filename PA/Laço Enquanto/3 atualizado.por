programa {
  funcao inicio(){
  inteiro n, maior, menor

  escreva("Digite um número: ")
  leia(n)

  se(n >= 0){
    maior=n
    menor=n

    enquanto(n >= 0) {
      se (n > maior) {
        maior = n
      }
      se (n < menor) {
        menor = n
      }

      escreva("Digite outro número (escolha um menor que zero para finalizar): ")
      leia(n)
    }
    escreva("O maior número é: ", maior)
    escreva("\nO menor número é: ", menor)
  }
  senao{
    escreva("O número digitado agora não é válido nesse momento")
  }
    
  }
}
