programa {
  funcao inicio() {
    inteiro n, i
    logico primo

    escreva("Digite um número maior que 1: ")
    leia(n)

    primo = verdadeiro

    para (i = 2; i < n; i++) {
      se (n % i == 0) {
        primo = falso
        pare
      }
    }
    se (primo) {
      escreva("Esse é um número primo")
    }
    senao {
      escreva("Esse não é um número primo")
    }
    
  }
}
