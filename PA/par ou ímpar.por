programa {
  funcao inicio() {
   real numero
   escreva("Digite o número desejado: ")
   leia(numero)

   se ( numero % 2 == 0) {
    escreva(numero, " é par!")
   } senao {
    escreva(numero, " é ímpar!")
   }
   // Exemplo: 10 % 2 = 0 (par)
   // Exemplo: 11 % 2 = 1 (ímpar)
    
  }
}
