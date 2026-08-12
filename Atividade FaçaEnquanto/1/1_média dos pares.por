programa{
  funcao inicio() {
    inteiro n, soma = 0, quantidade = 0
    real media

    escreva("Digite um número (menor que 0 para parar): ")
    leia(n)
    enquanto(n >= 0)  {
      se(n % 2 == 0)
      {
        soma = soma + n
        quantidade = quantidade + 1
        }
        escreva("Digite outro número: ")
        leia(n)
        }
        
        media = soma / quantidade

        escreva("A média dos números pares é: ", media)
        
    }
}