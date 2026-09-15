programa {
  funcao inicio() {
    inteiro n, vetor[], maior, posicao, i
    maior = 0
    para (i = 0; i < 10; i++) {
      escreva("Digite o ", i+1,"° número:")
      leia(vetor[i])
    }
    escreva("O maior número e sua posição é:")
    enquanto (vetor[i] >=0) {
        se (vetor[i] > maior) {
          maior = vetor[i]
          posicao = i
        }
      }
    escreva("Maior número: ", maior)

    
    
  }
}
