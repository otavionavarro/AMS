programa{
  funcao inicio(){
    inteiro n, quantidade = 0, impares = 0
      real porcentagem
      quantidade = 0
      impares = 0

      escreva("Digite um número (menor que 0 para parar): ")
      leia(n)

      enquanto(n >= 0)
      {
        quantidade = quantidade + 1

        se(n % 2 != 0)
        {
          impares = impares + 1
        }
        
        escreva("Digite outro numero: ")
        leia(n)
        }

        porcentagem = (impares * 100.0) / quantidade

        escreva("A porcentagem é: ", porcentagem, "%")
        
    }
}