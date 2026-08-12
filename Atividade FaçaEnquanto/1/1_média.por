programa{
  funcao inicio() {
    inteiro n, soma, quantidade
    real media
    soma = 0
    quantidade = 0
    
    escreva("Digite um número (menor que 0 para parar): ")
    leia(n)
    enquanto(n >= 0){
      soma = soma + n
      quantidade = quantidade + 1

      escreva("Digite outro número: ")
      leia(n)
        }
        media = soma / quantidade

        escreva("A média é: ", media)

    }
}