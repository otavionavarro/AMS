programa {
  funcao inicio() {
    real primeiro_numero, segundo_numero, resultado
    cadeia operacao
    escreva("Digite o primeiro número: ")
    leia(primeiro_numero)
    escreva("Digite o segundo número: ")
    leia(segundo_numero)
    escreva("escolha uma operação entre adição (+), subtração (-), multiplicação (*), divisão (/): ")
    leia(operacao)
    limpa()
    se (operacao == '+') {
      resultado=primeiro_numero+segundo_numero
      
    }
    se (operacao == '-') {
      resultado=primeiro_numero-segundo_numero
      
    }
    se (operacao == '*') {
      resultado=primeiro_numero*segundo_numero
      
    }
    se (operacao == '/') {
      resultado=primeiro_numero/segundo_numero
    }
    se (operacao == '/') {
      se(segundo_numero == 0)
      escreva("\n não foi possível fazer o cálculo com 0, tente outro")
    }
    
    se ( segundo_numero > 0) {
      escreva("O resultado é: ", resultado)
      }
    
    se (segundo_numero < 0) {
      escreva("O resultado é: ", resultado)
    }
  }
}
