programa {
  funcao inicio() {
    inteiro n, soma, maior, menor, media, media2, porcentagem, quantidade, pares, quantidadepares
    quantidade=0
    soma=0
    escreva("Digite um número: ")
    leia(n)

    enquanto(n>0)
    {
      quantidade=quantidade + n/n
      soma = soma + n
      media= soma/quantidade
      escreva("Digite um número positivo (0 ou negativo para encerrar): ")
      leia(n)
    }
    escreva("", quantidade)
    escreva("\n", soma)
    escreva("\n", media)
    escreva("\n", media2)

    
  }
}
