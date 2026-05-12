programa {
  funcao inicio() {
    real mes, dia
    escreva("Digite o número do mês: ")
    leia(mes)
    escreva("Digite o número do dia: ")
    leia(dia)

    se (mes == 1) {
      escreva("O mês é: ")
      escreva("\nO dia é: ", dia)
    }
    se (mes == 2) {
      escreva("O mês é: ")
      se (dia > 28) {
        escreva("O dia é inválido, tente outro")
      } senao {
      escreva("\nO dia é: ", dia)
      }
    }
    se (mes == 3) {
      escreva("O mês é: ")
      escreva("\nO dia é: ", dia)
    }
    se (mes == 4) {
      escreva("O mês é: ")
      escreva("\nO dia é: ", dia)
    }
    se (mes == 5) {
      escreva("O mês é: ")
      escreva("\nO dia é: ", dia)
    }
    se (mes == 6) {
      escreva("O mês é: ")
      escreva("\nO dia é: ", dia)
    }
    se (mes == 7) {
      escreva("O mês é: ")
      escreva("\nO dia é: ", dia)
    }
    se (mes == 8) {
      escreva("O mês é: Agosto")
      escreva("\nO dia é: ", dia)
    }
    se (mes == 9) {
      escreva("O mês é: Setembro")
      escreva("\nO dia é: ", dia)
    }
    se (mes == 10) {
      escreva("O mês é: Outubro")
      escreva("\nO dia é: ", dia)
    }
    se (mes == 11) {
      escreva("O mês é: Novembro")
      escreva("\nO dia é: ", dia)
    }
    se (mes == 12) {
      escreva("O mês é: Dezembro")
      escreva("\nO dia é: ", dia)
    }
    
    
  }
}
