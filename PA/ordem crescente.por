programa {
  funcao inicio() {
    real  primeiro_numero, segundo_numero, terceiro_numero
    escreva("Digite o primeiro número: ")
    leia(primeiro_numero)
    escreva("Digite o segundo número: ")
    leia(segundo_numero)
    escreva("Digite o terceiro número: ")
    leia(terceiro_numero)


    limpa()
    se (primeiro_numero > segundo_numero) {
      se (segundo_numero > terceiro_numero) {
      escreva("Aqui está os números em ordem crescente:")
      escreva("\n1: ", terceiro_numero)
      escreva("\n2: ", segundo_numero)
      escreva("\n3: ", primeiro_numero)
      }
    }
    se (primeiro_numero > terceiro_numero) {
      se (terceiro_numero > segundo_numero) {
      escreva("Aqui está os números em ordem crescente:")
      escreva("\n1: ", segundo_numero)
      escreva("\n2: ", terceiro_numero)
      escreva("\n3: ", primeiro_numero)
      }
    }
    se (segundo_numero > primeiro_numero) {
      se (primeiro_numero > terceiro_numero) {
      escreva("Aqui está os números em ordem crescente:")
      escreva("\n1: ", terceiro_numero)
      escreva("\n2: ", primeiro_numero)
      escreva("\n3: ", segundo_numero)
      }
    }
    se (segundo_numero > terceiro_numero) {
      se (terceiro_numero > primeiro_numero) {
      escreva("Aqui está os números em ordem crescente:")
      escreva("\n1: ", primeiro_numero)
      escreva("\n2: ", terceiro_numero)
      escreva("\n3: ", segundo_numero)
      }
    }
    se (terceiro_numero > segundo_numero) {
      se (segundo_numero > primeiro_numero) {
      escreva("Aqui está os números em ordem crescente:")
      escreva("\n1: ", primeiro_numero)
      escreva("\n2: ", segundo_numero)
      escreva("\n3: ", terceiro_numero)
      }
    }
    se (terceiro_numero > primeiro_numero) {
      se (primeiro_numero > segundo_numero) {
      escreva("Aqui está os números em ordem crescente:")
      escreva("\n1: ", segundo_numero)
      escreva("\n2: ", primeiro_numero)
      escreva("\n3: ", terceiro_numero)
      }
    }
    
    
  }
    
  }
}
