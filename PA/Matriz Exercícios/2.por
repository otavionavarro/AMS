programa {
  funcao inicio() {
    real matriz[3][3], soma = 0
    inteiro i, j

    para (i = 0; i < 3; i++) {
      para (j = 0; j < 3; j++) {
        escreva("Digite o número: ")
        leia(matriz[i][j])

        soma = soma + matriz[i][j]
      }
    }

    escreva("A Soma dos Números é: ", soma)
        
  }
}
