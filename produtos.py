def cadastrar_produto():
    nome = input("Digite o nome do produto: ")

    # Tratando a vírgula para aceitar o preço brasileiro (ex: 28,99)
    preco_texto = input("Digite o preço: ").replace(',', '.')
    preco = float(preco_texto)

    estoque = int(input("Digite o estoque: "))

    return {
        "nome": nome,
        "preco": preco,
        "estoque": estoque
    }


def mostrar_produto(produto):
    print("\n--- PRODUTO CADASTRADO ---")
    print(f"Nome: {produto['nome']}")
    print(f"Preço: R$ {produto['preco']:.2f}")
    print(f"Estoque: {produto['estoque']}")