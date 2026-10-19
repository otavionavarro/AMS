programa {
  funcao inicio() {
    real matriz[4][4], soma = 0, media

    para (inteiro i = 0; i < 4; i++) {
      para (inteiro j = 0; j < 4; j++) {
        escreva("Digite o número: ")
        leia(matriz[i][j])

        soma = soma + matriz[i][j]
      }
    }

    media = soma / 16
    escreva("A Soma é: ", soma)
    escreva("\nA Média é: ", media)
    
  }
}
