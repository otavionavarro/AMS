programa {
  funcao inicio() {
    inteiro n, soma, maior, menor, media, media2, porcentagem, quantidade, pares, quantidadepares
    
    quantidade = 0
    soma = 0


       escreva("Digite um número: ")
    leia(n)
    se(n >= 0){
    maior=n
    menor=n
    

    enquanto(n>0)
    {
       se (n > maior) {
        maior = n
      }
      se (n < menor) {
        menor = n
      }
      quantidade=quantidade + n/n
      soma = soma + n
      media= soma/quantidade
      quantidadepares= quantidade + (n % 2)
      pares= n*(n % 2)
      media2=pares/quantidadepares
      escreva("Digite um número positivo (0 ou negativo para encerrar): ")
      leia(n)
      
    }
    }
    escreva("quantidade:", quantidade)
    escreva("\nsoma:", soma)
    escreva("\nmédia:", media)
    escreva("\nmédia dos pares", media2)
    escreva("\nmaior número", maior)
    escreva("\nmenor número", menor)
    escreva("\nporcentagem", porcentagem)
    escreva("\nquantidade dos pares", quantidadepares)

  }
}
