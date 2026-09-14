programa {
  funcao inicio() {
    //fazer reajuste de salário

    cadeia func[3]
    real sal[3]
    real reajuste

    para (inteiro i = 0; i < 3; i++) {
      escreva("Nome do(a) funcionário(a): ")
      leia(func[i])

      escreva("Digite o salário de ", func[i], ": R$")
      leia(sal[i])
      escreva("\n")
    }
    escreva("Digite o índice para cálculo do reajuste salarial (%): ")
    leia(reajuste)
    escreva("\n==== SALÁRIOS REAJUSTADOS ====\n")
    para (inteiro i = 0; i < 3; i++) {
      sal[i] = sal[i] + (sal[i] + reajuste) / 100
      escreva("\nFuncionário(a): ", func[i])
      escreva("\nSalário reajustado: R$ ", sal[i])
      escreva("\n")
    }
    
  }
}
