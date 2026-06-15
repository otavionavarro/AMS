programa {
  funcao inicio() {
    inteiro n, div
    escreva("Digite um número: ")
    leia(n)
    div=n%5

    escolha (div){
			caso 0:
				escreva("A divisão é perfeita!")
				pare
			caso 1:
				escreva("Sobra 1, quase perfeito!")
				pare
			caso 2:
				escreva("Sobra 2, ainda falta um pouco.")
				pare
			caso 3:
				escreva("Sobra 3, passou da metade.")
				pare
			caso 4:
				escreva("Sobra 4, está quase lá.")
				pare
    }
    
  }
}
