programa {
  funcao inicio() {
    caracter sinal
    real primeiro, segundo, resultado
    escreva("Digite o primeiro numero: ")
    leia(primeiro)
    escreva("Digite o segundo numero: ")
    leia(segundo)
    escreva("### Calculadora ###", "\n")
    escreva("1:+", "\n")
    escreva("2:-", "\n")
    escreva("3:*", "\n")
    escreva("4:/", "\n")
    escreva("Digite o sinal que irá usar: ")
    leia(sinal)
    limpa()

    escolha(sinal){
      caso '+':
      resultado=primeiro+segundo
      escreva("O resultado da sua conta é: " , resultado)
      pare
      caso '-':
      resultado=primeiro-segundo
      escreva("O resultado da sua conta é: " , resultado)
      pare
      caso '*':
      resultado=primeiro*segundo
      escreva("O resultado da sua conta é: " , resultado)
      pare
      caso '/':
      se (segundo == 0) {
        escreva("Valor inválido, tente outro")
      } senao {
      resultado=primeiro/segundo
      escreva("O resultado da sua conta é: " , resultado)
      }
      pare
      
      caso contrario:
      escreva("Conta Inválida")
    }
    
  }
}
