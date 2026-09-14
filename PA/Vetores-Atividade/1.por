programa {
  funcao inicio() {
    inteiro i
    inteiro valor[6]
    para (i = 0; i < 6; i++) {
      escreva("Digite um número:")
      leia(valor[i])
    } 
    escreva("os números digitados são: \n")
    para (i = 0; i < 6; i++) {
      escreva(valor[i], "\n")
    }

  }
}
