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
    
    se(resultado==primeiro_numero+segundo_numero) {
    escreva("o resultado é: ", resultado)
    } se(resultado==primeiro_numero-segundo_numero) {
    escreva("o resultado é: ", resultado)
    } se(resultado==primeiro_numero*segundo_numero) {
    escreva("o resultado é: ", resultado)
    } se(resultado==primeiro_numero/segundo_numero) {
    escreva("o resultado é: ", resultado)
    }
    
  }
}
