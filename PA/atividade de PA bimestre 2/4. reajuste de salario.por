programa {
  funcao inicio() {
    inteiro salario, reajuste

    escreva("digite valor salario: ")
    leia(salario)
    
    se ((salario < 0))
    {escreva("salario ivalido")
    } senao
    se ((salario < 500)) {
      reajuste=salario+(salario*0.15)
    
   escreva("o salario com reajuste é: ", reajuste)
   } senao 
     se((salario >= 500) e (salario <= 1000)) {
      reajuste=salario+(salario*0.10) 
      escreva("o salario com reajuste é: ", reajuste)
      } senao 
      se ((salario > 1000) e (salario <= 1500))
      { reajuste=salario+(salario*0.05)
       escreva("o salario com reajuste é: ", reajuste)
      } senao 
      se ((salario > 1500))
      {  reajuste=salario+(salario*0.02)
      escreva("o salario com reajuste é: ", reajuste)

      }
}
  }
}
