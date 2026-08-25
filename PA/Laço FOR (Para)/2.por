programa {
  funcao inicio() {
    inteiro n, soma, quantidade
    real media
    soma=0
    quantidade=0
    para(inteiro i = 1; i <= 10; i++ ou n < 0) { 
      escreva("Digite algum número: ")
      leia(n)
      se (n > 0) {
        soma= soma + n
      quantidade = quantidade + 1
      }
      senao {
        escreva("Opção Inválida, tente um número inteiro positivo")
        pare
      }
    }
      se (quantidade > 0) {
        media= soma/quantidade
        escreva("A média dos números é: ", media)
      }
    
  }
}
