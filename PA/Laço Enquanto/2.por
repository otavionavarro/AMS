programa {
  funcao inicio() {
    inteiro n, resultado
    n = 1
    resultado = 0
    enquanto(n < 1000) {
    se(n % 3 == 0 ou n % 5 == 0) {
      resultado = resultado + n
    }
    n=n + 1
    }

    escreva("A soma dos números é: ", resultado)

    }
    
  }
}
