programa {
  funcao inicio() {
    inteiro lista[10]
    inteiro qtd = 0
    inteiro capacidade = 0
    inteiro limite = 10
    inteiro valor

    enquanto (qtd < limite) {
      escreva("Digite um valor (0 para parar): ")
      leia(valor)

      se (valor == 0) {
        pare
      }

      se (qtd == capacidade) {
        se (capacidade < limite) {
          capacidade = capacidade + 2

          se (capacidade > limite) {
            capacidade = limite
          }

          escreva("Capacidade aumentada para ", capacidade, ",\n")
        } senao {
          escreva("Lista cheia! Limite máximo atingido.\n")
          pare
        }
      }

      lista[qtd] = valor
      qtd++
    }

    se (qtd == limite) {
      escreva("Lista cheia! Limite máximo atingido.\n")
    }

    escreva("Lista: ")
    para (inteiro i = 0; i < qtd; i++) {
      escreva(lista[i], " ")
    }
    escreva("\nQuantidade ", qtd, "\n")
    escreva("Capacidade atual: ", capacidade, "\n") 
  }
}