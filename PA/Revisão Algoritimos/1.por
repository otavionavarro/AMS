programa {
  funcao inicio() {
    cadeia nome, situacaofre, situacaono
    real n1, n2, n3, media, frequencia

    escreva("Digite o nome do aluno: ")
    leia(nome)
    escreva("Digite a 1° nota: ")
    leia(n1)
    escreva("Digite a 2° nota: ")
    leia(n2)
    escreva("Digite a 3° nota: ")
    leia(n3)
    escreva("Digite a Frequência em porcentagem: ")
    leia(frequencia)

    media= (n1 + n2 + n3)/3
      
    se (frequencia < 75) {
      situacaofre = "Reprovado por frequência"
    } senao {
      situacaofre = "Aprovado"
    } se (media >= 7){
      situacaono = "Aprovado"
    } senao se (media >= 5){
      situacaono = "Recuperação"
    } senao {
      situacaono = "Reprovado"
    }

    escreva("Nome do aluno: ", nome)
    escreva("\nFrequência: ", frequencia)
    escreva("\nMédia: ", media)
    escreva("\nSituação por frequência: ", situacaofre)
    escreva("\nSituação por média: ", situacaono)
    
  }
}
