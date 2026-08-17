programa {
  funcao inicio() {
    inteiro n, soma
    soma = 0
    para(inteiro i = 1; i <= 10; i++) {
      escreva("Digite o número: ")
      leia(n)
      soma= soma + n
    }

    escreva("A soma de todos esses números é: ", soma)
    
  }
}
