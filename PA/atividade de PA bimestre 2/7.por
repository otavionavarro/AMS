programa {
  inclua biblioteca Matematica --> MAT
  funcao inicio() {
    inteiro a, b, c, delta, resultado1, resultado2
    escreva("Digite o valor de a, b e c para descobrirmos o delta da equação de segundo grau: \n ")
     escreva("a: ")
    leia(a)
    escreva("b: ")
    leia(b)
    escreva("c: ")
    leia(c)

    delta=(b * b) - 4 * (a * c) 
    
    se (delta > 0) {
      escreva("São duas raízes reais diferentes")
      resultado1=(-b + MAT.raiz(delta, 2.0)) / (2 * a)
      resultado2=(-b - MAT.raiz(delta, 2.0)) / (2 * a)
    
    } senao se (delta == 0) {
      escreva("São duas raízes iguais")
      escreva(delta)
      resultado1=(-b + MAT.raiz(delta, 2.0)) / (2 * a)
      resultado2=(-b - MAT.raiz(delta, 2.0)) / (2 * a)
    
    } senao {
      escreva("Não há raízes reais")
    }
    escreva("\nO resultado da equação é:")
    escreva(delta)
    escreva("\nRaiz X1: ", resultado1)
    escreva("\nRaiz X2: ", resultado2)
    
  }
}
