# 🚀 Projeto Cocacola - Conexão com Banco de Dados

Sistema completo de conexão com PostgreSQL usando Node.js, Express e Pool de Conexões.

## ⚡ Início Rápido

### Opção 1: Setup Automático (Recomendado)

**Windows:**
```bash
setup.bat
```

**Mac/Linux:**
```bash
chmod +x setup.sh
./setup.sh
```

### Opção 2: Setup Manual

**1. Instalar dependências:**
```bash
npm install
```

**2. Configurar variáveis de ambiente:**
```bash
cp .env.example .env
```

Edite `.env` com suas credenciais PostgreSQL:
```env
DB_HOST=localhost
DB_PORT=5432
DB_NAME=cocacola_db
DB_USER=postgres
DB_PASSWORD=sua_senha_aqui
PORT=3000
```

**3. Inicie o servidor:**

Desenvolvimento com hot-reload:
```bash
npm run dev
```

Produção:
```bash
npm start
```

## 📋 Estrutura do Projeto

```
cocacola/
├── server.js          # Servidor Express principal
├── db.js              # Configuração e pool de conexão
├── package.json       # Dependências do projeto
├── .env.example       # Template de variáveis de ambiente
├── .gitignore         # Arquivos ignorados no git
├── setup.sh           # Script de setup para Mac/Linux
├── setup.bat          # Script de setup para Windows
└── README.md          # Este arquivo
```

## 🔗 Endpoints Disponíveis

### 1. **GET /** - Página Inicial
Retorna informações gerais da API

```bash
curl http://localhost:3000/
```

**Resposta:**
```json
{
  "message": "Bem-vindo à API Cocacola!",
  "version": "1.0.0",
  "endpoints": {
    "health": "/api/health",
    "data": "/api/data",
    "docs": "/api/docs"
  }
}
```

### 2. **GET /api/health** - Health Check
Testa a conexão com o banco de dados

```bash
curl http://localhost:3000/api/health
```

**Resposta (Sucesso):**
```json
{
  "status": "✓ OK",
  "message": "Servidor e banco de dados estão funcionando",
  "database": "Conectado",
  "timestamp": "2026-07-15T21:50:00.000Z",
  "databaseVersion": "PostgreSQL 14.5"
}
```

**Resposta (Erro):**
```json
{
  "status": "✗ ERRO",
  "message": "Falha na conexão com o banco de dados",
  "error": "connect ECONNREFUSED 127.0.0.1:5432"
}
```

### 3. **GET /api/data** - Listar Tabelas
Lista todas as tabelas do banco de dados

```bash
curl http://localhost:3000/api/data
```

**Resposta:**
```json
{
  "message": "Tabelas encontradas no banco de dados",
  "count": 3,
  "tables": ["usuarios", "produtos", "vendas"]
}
```

### 4. **GET /api/docs** - Documentação
Documentação completa da API

```bash
curl http://localhost:3000/api/docs
```

## 🛠️ Requisitos

- **Node.js** >= 14.0.0
- **npm** >= 6.0.0
- **PostgreSQL** >= 12.0

## 📦 Dependências

- **express** - Framework web
- **pg** - Driver PostgreSQL
- **dotenv** - Variáveis de ambiente
- **cors** - Middleware CORS
- **body-parser** - Parser de JSON
- **nodemon** - Auto-reload em desenvolvimento

## 🚀 Usando em Produção

1. Configure o arquivo `.env` com credenciais de produção
2. Defina `NODE_ENV=production`
3. Execute: `npm start`

## 🐛 Troubleshooting

### Erro: "connect ECONNREFUSED"
- Certifique-se de que PostgreSQL está rodando
- Verifique as credenciais no `.env`

### Erro: "database cocacola_db does not exist"
- Crie o banco: `createdb cocacola_db` (no terminal)
- Ou execute no PostgreSQL:
  ```sql
  CREATE DATABASE cocacola_db;
  ```

### Erro: "npm: command not found"
- Instale Node.js de: https://nodejs.org/

## 📚 Links Úteis

- [Node.js](https://nodejs.org/)
- [Express.js](https://expressjs.com/)
- [PostgreSQL](https://www.postgresql.org/)
- [Node-Postgres](https://node-postgres.com/)

## 👨‍💻 Desenvolvedor

**onlinestarlink27-cloud**

## 📄 Licença

ISC

---

**Desenvolvido com ❤️ usando Node.js e PostgreSQL**
