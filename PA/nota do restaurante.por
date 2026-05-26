programa {
  funcao inicio() {
    real nota
    escreva("Digite a nota do restaurante, sendo o número entre 1 a 5: ")
    leia(nota)

    se ((nota < 1) ou (nota >5)) {
      escreva("Nota inválida! Por favor, digite uma nota entre 1 e 5.")
    } senao {
      escreva("Obrigado por sua opinião, sua nota é: ", nota)
    }
    
  }
}
