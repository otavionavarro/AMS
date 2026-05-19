programa {
  funcao inicio() {
    inteiro porcentagem
    escreva("Qual a porcentagem da carga: ")
    leia(porcentagem)

    se (porcentagem < 11) {
      escreva("Ativação do modo de Economia Extrema")
    } senao { se (porcentagem < 21) {
      escreva("Bateria fraca, ache um carregador")
    } senao { se (porcentagem < 81) {
      escreva("Carga normal de uso")
    } senao { se (porcentagem < 100) {
       escreva("Carga alta")
    } senao {se (porcentagem == 100) {
      escreva("Carga completa")
    }
    }
    }
    }
    }
    
  }
}
