programa {
  funcao inicio() {
    inteiro vetor[10], maior, posicao, i
    
    para (i = 0; i < 10; i++) {
      escreva("Digite o ", i+1,"° número: ")
      leia(vetor[i])
    }
    maior = vetor[0]
    posicao = 0
    para (i = 0; i < 10; i++) {
      se (vetor[i] > maior) {
          maior = vetor[i]
          posicao = i
      }
    }
    escreva("Maior número: ", maior)
    escreva("\nSua posição é: ", posicao + 1, "°")
  }
}
