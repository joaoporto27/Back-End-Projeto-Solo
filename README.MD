# Projeto Back-End

## Como executar o projeto

### 1. Criar pasta do projeto
Abra o Terminal e digite os seguintes comandos
mkdir Back-End-Projeto-Solo
cd Back-End-Projeto-Solo
code .

### 2. Clone o projeto do github
Já dentro do vscode abra o terminal (command prompt) e digite 
git clone "link do repositório" como é para clonar esse projeto faça:
git clone https://github.com/joaoporto27/Back-End-Projeto-Solo

### 3. Inicializar projeto Node.js
Ainda dentro do terminal instale o Node.Js para a inicialização do projeto
npm install

### 4. Configurar variáveis de ambiente(.env)
Crie o arquivo .env com as váriaveis que estão no .env.local e coloque as configurações do sql e sua porta

PORT=4000
DB_USER=postgres
DB_HOST=localhost
DB_NAME=deck_royale
DB_PASSWORD="sua-senha"
DB_PORT="sua-porta"

### 5. Iniciar o servidor
Agora com tudo instalado é só utilizar o npm run dev no terminal para rodar o servidor

### 8. Servidor funcionado
Se tudo ocorreu bem aparecerá a seguinte mensagem no seu terminal:

O servidor estará rodando em `http://localhost:4000`

E é só aproveitar a API

### Principais rotas

## Buscar todas as cartas
# http://localhost:4000/api/cards

## Busacar carta por id
# http://localhost:4000/api/cards/{id}