programa {
  funcao inicio() {
    real quilos, metros, IMC
    escreva("Digite a sua quantidade de peso em quilos: ")
    leia(quilos)
    escreva("Digite a sua altura em metros: ")
    leia(metros)

    IMC=quilos/(metros*metros)
    limpa()
    se ((IMC < 1)) {
      escreva("Digite um peso natural de uma pessoa")
    } senao { se ((IMC < 16) e (IMC > 1)) {
      escreva("IMC < 16:Magreza grave")
    } senao}
    
  }
}
