programa {
  funcao inicio() {
    real matriz[4][4], soma = 0
    inteiro i

    para (i = 0; i < 4; i++) {
      para (inteiro j = 0; j < 4; j++) {
        escreva("Digite o número da posição: ")
        leia(matriz[i][j])
      }
    }

    escreva("\nValores da diagonal principal: \n")

    para (i = 0; i < 4; i++) {
      escreva(matriz[i][i], "   ")
      soma = soma + matriz[i][i]
    }
    escreva("\nA Soma é: ", soma)
    
  }
}
