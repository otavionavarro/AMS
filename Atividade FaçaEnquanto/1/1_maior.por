programa{
  funcao inicio() {
    inteiro n, maior
    maior = 0
    
    escreva("Digite um número (menor que 0 para parar): ")
    leia(n)

    enquanto(n >= 0)
    {
      se(n > maior)
      {
        maior = n
      }
      escreva("Digite outro número: ")
      leia(n)
    }

    escreva("O maior número é: ", maior)
    
    }
}
