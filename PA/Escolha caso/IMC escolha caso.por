programa {
  funcao inicio() {
    real m, kg, imc, opcao
    escreva("Digite a sua quantos quilos você tem: ")
    leia(kg)
    escreva("Digite a sua altura: ")
    leia(m)

    imc=kg/(m*m)
    se(imc < 16) {
      opcao= 1
    } senao se(imc < 17) {
      opcao= 2
    } senao se(imc < 18.5) {
      opcao= 3
    } senao se(imc < 25) {
      opcao= 4
    } senao se(imc < 30) {
      opcao= 5
    } senao se(imc < 35) {
      opcao= 6 
    } senao {
      opcao= 7
    }

    escolha(opcao) {
      caso 1:
      escreva("Você tem Magreza grave")
      pare
      caso 2:
      escreva("Você tem Magreza moderada")
      pare
      caso 3:
      escreva("Você tem Magreza leve")
      pare
      caso 4:
      escreva("Você é Saudável")
      pare
      caso 5:
      escreva("Você tem Sobrepeso")
      pare
      caso 6:
      escreva("Você tem Obesidade grau I")
      pare
      caso 7:
      escreva("Você tem Obesidade grau II")
      pare
    }
    
  }
}
