
    programa
{
    funcao inicio()
    {
        inteiro num1, num2, num3

        escreva("Digite numero 1: ")
        leia(num1)

        escreva("Digite numero 2: ")
        leia(num2)

        escreva("Digite numero 3: ")
        leia(num3)

        
        se (num1 >= num2 e num2 >= num3)
        {
            escreva(num1, num2, num3)
        }
        senao se (num1 >= num3 e num3 >= num2)
        {
            escreva(num1, num3, num2)
        }

        
        senao se (num2 >= num1 e num1 >= num3)
        {
            escreva(num2,  num1,  num3)
        }
        senao se (num2 >= num3 e num3 >= num1)
        {
            escreva(num2,  num3,  num1)
        }

        
        senao se (num3 >= num1 e num1 >= num2)
        {
            escreva(num3,  num1,  num2)
        }
        senao
        {
            escreva(num3,  num2,  num1)
        }
    }
}
  }
}
