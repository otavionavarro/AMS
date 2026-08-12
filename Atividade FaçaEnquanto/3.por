programa{
  funcao inicio() {
    inteiro opcao

    escreva("Digite uma Opção de 1 a 3: ")
     leia(opcao)
     
     enquanto(opcao< 1 ou opcao > 10){
      escreva("Opção inválida!")
      escreva("\nDigite Novamente: ")
      leia(opcao)
        }
        escreva("Opção Válida!!")
        
    }
}