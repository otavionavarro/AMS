programa{
  funcao inicio() {
    inteiro n, quantidade
    quantidade = 0
    escreva("Digite um número (menor que 0 para parar): ")
    leia(n)
    enquanto(n >= 0){
      quantidade = quantidade + 1

      escreva("Digite outro Número: ")
      leia(n)
    }
    escreva("A quantidade digitada é: ", quantidade)

    }
}