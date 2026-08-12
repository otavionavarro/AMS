programa{
  funcao inicio() {
    inteiro n, menor, quantidade
    quantidade = 0
    escreva("Digite um número (menor que 0 para parar): ")
    leia(n)

    enquanto(n >= 0)
    {
      se(quantidade == 0)
      {
        menor = n
      }
      se(n < menor)
      {
        menor = n
      }

      quantidade = quantidade + 1

      escreva("Digite outro número: ")
      leia(n)
        }

      escreva("O menor número é': ", menor)
      
    }
}