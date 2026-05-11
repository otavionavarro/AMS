programa {
  funcao inicio() {
    real primeiro_numero, segundo_numero, terceiro_numero, resultado, resultado2, resultado3
    escreva("Digite o primeiro número: ")
    leia(primeiro_numero)
    escreva("Digite o segundo número: ")
    leia(segundo_numero)
    escreva("Digite o terceiro número: ")
    leia(terceiro_numero)

    resultado=primeiro_numero
    resultado2=segundo_numero
    resultado3=terceiro_numero
    limpa()

    se (primeiro_numero > segundo_numero) {
      se (segundo_numero > terceiro_numero) {
      escreva("Aqui está os números em ordem decrescente:")
      escreva("\n1: ", resultado)
      escreva("\n2: ", resultado2)
      escreva("\n3: ", resultado3)
      }
    }
    se (primeiro_numero > terceiro_numero) {
      escreva("Aqui está os números em ordem decrescente:")
      se (terceiro_numero > segundo_numero) {
      escreva("\n1: ", resultado)
      escreva("\n2: ", resultado3)
      escreva("\n3: ", resultado2)
      }
    }
    se (segundo_numero > primeiro_numero) {
      se (primeiro_numero > terceiro_numero) {
      escreva("Aqui está os números em ordem decrescente:")
      escreva("\n1: ", resultado2)
      escreva("\n2: ", resultado)
      escreva("\n3: ", resultado3)
      }
    }
    se (segundo_numero > terceiro_numero) {
      se (terceiro_numero > primeiro_numero) {
      escreva("Aqui está os números em ordem decrescente:")
      escreva("\n1: ", resultado2)
      escreva("\n2: ", resultado3)
      escreva("\n3: ", resultado)
      }
    }
    se (terceiro_numero > segundo_numero) {
      se (segundo_numero > primeiro_numero) {
      escreva("Aqui está os números em ordem decrescente:")
      escreva("\n1: ", resultado3)
      escreva("\n2: ", resultado2)
      escreva("\n3: ", resultado)
      }
    }
    se (terceiro_numero > primeiro_numero) {
      se (primeiro_numero > segundo_numero) {
      escreva("Aqui está os números em ordem decrescente:")
      escreva("\n1: ", resultado3)
      escreva("\n2: ", resultado)
      escreva("\n3: ", resultado2)
      }
    }
    
    
  }
}
