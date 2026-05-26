programa {
  funcao inicio() {
    real quilos, metros, imc
    escreva("Digite a sua quantidade de peso em quilos: ")
    leia(quilos)
    escreva("Digite a sua altura em metros: ")
    leia(metros)

    imc=quilos/(metros*metros)
     se ((imc < 16) e (imc > 1)) {
      escreva("IMC < 16:Magreza grave")
    } senao se ((16 <= imc) e (imc < 17)) {
      escreva("16.0 <= IMC < 17.0: Magreza moderada")
    } senao se ((17 <= imc) e (imc < 18.5)) {
      escreva("17.0 <= IMC < 18.5: Magreza leve")
    } senao se ((18.5 <= imc) e (imc < 25)) {
      escreva("18.5 <= IMC < 25.0: Saudável")
    } senao se ((25 <= imc) e (imc < 30)) {
      escreva("25.0 <= imc < 30.0: Sobrepeso")
    } senao {
    se ((30 <= imc) e (imc < 35)) {
      escreva("30.0 <= IMC < 35.0: Obesidade grau I")
    } senao se((35 <= imc) e (imc < 40)) {
      escreva("35.0 <= IMC < 40.0: Obesidade grau II")
    } 
    
    }
  }
}
