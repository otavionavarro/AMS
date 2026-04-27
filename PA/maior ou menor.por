programa {
  funcao inicio() {
    inteiro primeiro_numero, segundo_numero, resultado
    escreva("Digite o primeiro número: ")
    leia(primeiro_numero)
    escreva("Digite o segundo número: ")
    leia(segundo_numero)
    resultado=primeiro_numero+segundo_numero

    se ( resultado >= 10 ) {
      escreva("A soma é maior que 10, foi um sucesso!")
    } senao {
      escreva("A soma foi menor que 10, tente valores maiores")
    }
    // Exemplo: 10 + 1 = 11 (sucesso)
    // Exemplo: 8 + 1 = 9 (fracasso)
    
  }
}
