programa {
  funcao inicio() {
    real celsius, resultado
    cadeia fk
    escreva("Digite o valor dos Celsius: ")
    leia(celsius)
    escreva("qual tipo de temperatura você quer transformar? (Fahrenheit ou Kelvin): ")
    leia(fk)

    escolha (fk) {
      caso "Fahrenheit":
      resultado = celsius*9/5+32
      escreva("O resultado em Fahrenheit é: ", resultado)
      pare
      caso "fahrenheit":
      resultado = celsius*9/5+32
      escreva("O resultado em Fahrenheit é: ", resultado)
      pare
      caso "Kelvin":
      resultado = celsius+273.15
      escreva("O resultado em Kelvin é: ", resultado)
      pare
      caso "kelvin":
      resultado = celsius+273.15
      escreva("O resultado em Kelvin é: ", resultado)
      pare
    }
    
  }
}
