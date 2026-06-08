programa {
  funcao inicio() {
    real altura, genero, resultado
    escreva("Digite a sua altura: ")
    leia(altura)
    escreva("Digite o gênero(Homem ou Mulher): ")
    leia(genero)

    escolha (genero) {
      caso "Homem":
      resultado=72.2*altura
      escreva("O peso ideal para os homens nessa altura é: ", resultado)
    }
    
  }
}
