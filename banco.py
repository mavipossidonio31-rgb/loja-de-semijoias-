import sqlite3

def conectar():
    return sqlite3.connect("loja.db")

def criar_tabela():
    banco = conectar()
    cursor = banco.cursor()
    cursor.execute("""
        CREATE TABLE IF NOT EXISTS produto (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            nome TEXT NOT NULL,
            preco REAL NOT NULL,
            estoque INTEGER NOT NULL
        )
    """)
    banco.commit()
    banco.close()

def inserir_produto(nome, preco, estoque):
    banco = conectar()
    cursor = banco.cursor()
    cursor.execute("""
        INSERT INTO produto (nome, preco, estoque)
        VALUES (?, ?, ?)
    """, (nome, preco, estoque))
    banco.commit()
    banco.close()

def listar_produtos():
    banco = conectar()
    cursor = banco.cursor()
    cursor.execute("SELECT * FROM produto")
    produtos = cursor.fetchall()
    banco.close()
    return produtos