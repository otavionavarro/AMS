programa {
  funcao inicio() {
    real salario, salario_liquido, imposto
    escreva("Digite o salário: ")
    leia(salario)

    se (salario >= 1500) {
      imposto = salario * 0.04
    } senao {
      imposto = 0
    }
    // Cálculo Final
    salario_liquido = salario - imposto
    escreva("O salário líquido é: ", salario_liquido)
    
  }
}
