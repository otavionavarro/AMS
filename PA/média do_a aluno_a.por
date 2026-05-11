programa {
  funcao inicio() {
    real primeira_nota, segunda_nota, terceira_nota, quarta_nota, resultado
    cadeia nome
    escreva("Digite seu nome: ")
    leia(nome)
    escreva("Digite a primeira nota: ")
    leia(primeira_nota)
    escreva("Digite a segunda nota: ")
    leia(segunda_nota)
    escreva("Digite a terceira nota:")
    leia(terceira_nota)
    escreva("Digite a quarta nota: ")
    leia(quarta_nota)

    resultado=(primeira_nota+segunda_nota+terceira_nota+quarta_nota)/4
    limpa()

    se (resultado < 7) {
      escreva("O/A aluno/a ", nome)
      escreva(" foi reprovado/a por tirar: ", resultado)
    }
    se (resultado > 6) {
      escreva("O/A aluno/a ", nome)
      escreva(" foi aprovado/a por tirar: ", resultado)
    }
    
  }
}
