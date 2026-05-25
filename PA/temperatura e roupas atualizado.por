programa {
  funcao inicio() {
    real celsius
    escreva("Digite a quantidade de temperatura em graus celsius: ")
    leia(celsius)
    se((celsius < -50) ou (celsius > 60)) {
      escreva("Digite uma temperatura válida.")
    }senao
    se  (celsius <= 10) {
      escreva("Blusa pesada, luvas e cachecol")
    } senao { se ((celsius > 10) e (celsius <= 20)) {
      escreva("Calça comprida e casaco leve")
    } senao { se ((celsius > 20) e (celsius<= 30)) {
      escreva("Camiseta confortável e bermuda/saia")
    } senao { se (celsius > 30) {
      escreva("É recomendado usar roupas leves, boné e protetor solar")
    }
    }
    }
    }
    
  }
}
