altura = float(input("Digite a altura do reservátorio de água: "))
comprimento = float(input("Digite a comprimento do reservátorio de água: "))
largura = float(input("Digite a largura do reservátorio de água: "))
diario = float(input("Digite o consumo diário de água: "))
capacidade = altura*comprimento*largura * 1000

if(diario<=9):
    print("O consumo diário está Baixo e a capacidade do reservatório é", capacidade, "metros³")
    elif(diario==10):
    print("O consumo diário está Moderado e a capacidade do reservatório é", capacidade, "metros³")
    else(diario>=11):
    print("O consumo diário está Alto e a capacidade do reservatório é", capacidade, "metros³")
