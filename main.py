from banco import criar_tabela, inserir_produto, listar_produtos
from produtos import cadastrar_produto, mostrar_produto

# 1. Garante que a tabela existe no banco de dados
criar_tabela()

print("=== CADASTRO DE PRODUTO ===")
# 2. Pede os dados ao usuário usando a função do arquivo produtos.py
novo_produto = cadastrar_produto()

# 3. Salva os dados no banco SQLite
inserir_produto(
    novo_produto["nome"],
    novo_produto["preco"],
    novo_produto["estoque"]
)

print("\nProduto salvo com sucesso no banco de dados!")

# 4. Busca todos os produtos salvos no banco e exibe
print("\n=== LISTA DE PRODUTOS NO BANCO ===")
produtos_do_banco = listar_produtos()

for p in produtos_do_banco:
    # O banco retorna uma tupla: (id, nome, preco, estoque)
    print(f"ID: {p[0]} | Nome: {p[1]} | Preço: R$ {p[2]:.2f} | Estoque: {p[3]}")