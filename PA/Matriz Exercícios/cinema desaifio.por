
programa
{
    funcao inicio()
    {
        inteiro sala[4][5] = {
            {1, 0, 0, 1, 0},
            {0, 1, 0, 0, 0},
            {0, 0, 1, 0, 1},
            {1, 0, 0, 0, 0}
        }

        inteiro opcao, linha, coluna
        inteiro livres, ocupados

        faca
        {
            escreva("\n===== CINEMA =====\n")
            escreva("1. Mostrar a sala\n")
            escreva("2. Reservar assento\n")
            escreva("3. Cancelar reserva\n")
            escreva("4. Quantidade de lugares\n")
            escreva("5. Sair\n")
            escreva("Escolha uma opcao: ")
            leia(opcao)

            escolha (opcao)
            {
                caso 1:
                    escreva("\n--- MAPA DA SALA ---\n")

                    para (inteiro i = 0; i < 4; i++)
                    {
                        para (inteiro j = 0; j < 5; j++)
                        {
                            se (sala[i][j] == 0)
                                escreva("[ ] ")
                            senao
                                escreva("[X] ")
                        }

                        escreva("\n")
                    }
                    pare

                caso 2:
                    escreva("Digite a linha (1 a 4): ")
                    leia(linha)
                    escreva("Digite a coluna (1 a 5): ")
                    leia(coluna)

                    se (linha < 1 ou linha > 4 ou coluna < 1 ou coluna > 5)
                    {
                        escreva("Posicao invalida!\n")
                    }
                    senao se (sala[linha - 1][coluna - 1] == 1)
                    {
                        escreva("Esse assento ja esta ocupado!\n")
                    }
                    senao
                    {
                        sala[linha - 1][coluna - 1] = 1
                        escreva("Reserva realizada com sucesso!\n")
                    }
                    pare

                caso 3:
                    escreva("Digite a linha (1 a 4): ")
                    leia(linha)
                    escreva("Digite a coluna (1 a 5): ")
                    leia(coluna)

                    se (linha < 1 ou linha > 4 ou coluna < 1 ou coluna > 5)
                    {
                        escreva("Posicao invalida!\n")
                    }
                    senao se (sala[linha - 1][coluna - 1] == 0)
                    {
                        escreva("Esse assento ja esta livre!\n")
                    }
                    senao
                    {
                        sala[linha - 1][coluna - 1] = 0
                        escreva("Reserva cancelada com sucesso!\n")
                    }
                    pare

                caso 4:
                    livres = 0
                    ocupados = 0

                    para (inteiro i = 0; i < 4; i++)
                    {
                        para (inteiro j = 0; j < 5; j++)
                        {
                            se (sala[i][j] == 0)
                                livres = livres + 1
                            senao
                                ocupados = ocupados + 1
                        }
                    }

                    escreva("Lugares livres: ", livres, "\n")
                    escreva("Lugares ocupados: ", ocupados, "\n")
                    escreva("Total de assentos: ", livres + ocupados, "\n")
                    pare

                caso 5:
                    escreva("Encerrando o programa...\n")
                    pare

                caso contrario:
                    escreva("Opcao invalida! Tente novamente.\n")
            }
        } enquanto (opcao != 5)
    }
}
