programa {
  funcao inicio() {
    real a, b, c, delta
    escreva("Digite o valor de a, b e c para descobrirmos o delta da equação de segundo grau")
    escreva("\na: ")
    leia(a)
    escreva("\nb: ")
    leia(b)
    escreva("\nc: ")
    leia(c)

    delta=(b*b)(-4*a*c)

    se (delta > 0) {
      escreva("São duas raízes reais diferentes. O valor de Delta é: ", delta)
    } senao se (delta == 0) {
      escreva("São duas raízes iguais. O valor de Delta é: ", delta)
    } senao se (delta < 0) {
      escreva("Não há raízes reais. O valor de Delta é: ", delta)
    }
    
  }
}
