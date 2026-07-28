programa {
  funcao inicio() {
    real nota, soma, media
    inteiro i

    soma = 0

    para(i = 1; i <= 5; i++){
      escreva("Digite a ", i, " ° nota: ")
      leia(nota)
      soma = soma + nota
    }
    media = soma/ 5
    escreva("\n A média das 5 notas é: ", media)

  }
}
