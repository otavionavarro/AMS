programa {
  funcao inicio() {
    inteiro idade
    escreva("Digite a sua idade: ")
    leia(idade)

    limpa()
    se (idade < 18) {
    se (idade > 67) {
      escreva("Você infelizmente não poderá fazer a doação de sangue")
    }
    }
    se (idade > 17) {
    se (idade < 68) {
      escreva("Você poderá fazer a doação de sangue")
    }
    }
    
  }
}
