programa {
  funcao inicio() {
    inteiro habitantes, eu, codigo
    real maior, menor, media, kwh, consumomes, residencial = 0, comercial = 0, industrial = 0, total = 0

    escreva("Digite a quantidade de habitantes de uma cidade: ")
    leia(habitantes)
    escreva("Digite o valor do kwh: ")
    leia(kwh)

    para (inteiro i = 1; i <= habitantes; i++) {
      escreva("\nQual o Consumo do mês: ")
      leia(consumomes)
    escreva("1-Residencial")
    escreva("\n2-Comercial")
    escreva("\n3-Industrial")
    escreva("\nescolha o número do seu código: ")
    leia(codigo)

    total = total + consumomes

    se(i == 1) {
      maior = consumomes
      menor = consumomes
    }
    senao{
      se (consumomes > maior) {
        maior = consumomes
      }
      se (consumomes < menor) {
        menor = consumomes
      }
    }

    se(codigo == 1) {
      residencial = residencial + consumomes
    }
    se(codigo == 2) {
      comercial = comercial + consumomes
    }
    se(codigo == 3) {
      industrial = industrial + consumomes
    }
    pare
    }
    media = total/habitantes

    escreva("Maior consumo: ", maior)
    escreva("\nMenor consumo: ", menor)
    escreva("\nMédia do consumo: ", media)
    escreva("\nTotal residencial: ", residencial)
    escreva("\nTotal comercial: ", comercial)
    escreva("\nTotal industrial: ", industrial)
    
  }
}
