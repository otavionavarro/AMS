programa {
  funcao inicio() {
    caracter sexo
    escreva("Qual o seu sexo? (coloque com letras, como f de feminino e m de masculino): ")
    leia(sexo)

    se ((sexo == 'm') e (sexo == 'M')) {
      escreva("Esse é o sexo masculino")
    } senao se ((sexo == 'f') e (sexo == 'F')) {
      escreva("Esse é o sexo feminino")
    } senao se ((sexo != 'm') e (sexo != 'M') e (sexo != 'f') e (sexo != 'F')) {
      escreva("Esse sexo é inválido, tente outro")
    }
    
  }
}
