programa {
  funcao inicio() {
    real idade, tempo_servico
    escreva("digite sua idade: ")
    leia(idade)
    escreva("digite seu tempo de serviço: ")
    leia(tempo_servico)

    se ((idade <= 0))
   {escreva("digite uma idade valida")}
   senao 
   se ((idade >= 65))
   {escreva("voce pode se aposentar")}
   senao
   se ((tempo_servico >= 30))
   {escreva("voce pode se aposentar")}
   senao 
   se ((idade >= 60) e (tempo_servico >= 25))
   {escreva("voce pode se aposentar")}
   senao
   se ((idade < 60) e (tempo_servico < 25) ou (idade < 65) ou (tempo_servico < 30))
   {escreva("voce nao pode se aposentar")}
  
   
   
  }
}
