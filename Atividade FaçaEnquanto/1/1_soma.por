programa{
  funcao inicio() {
    inteiro n, soma
    soma = 0
    escreva("Digite um número (menor que 0 para parar): ")
    leia(n)
    enquanto(n >= 0){
      soma = soma + n

      escreva("Digite outro número: ")
      leia(n)
    }

    escreva("A soma é: ", soma)
    
    }
}