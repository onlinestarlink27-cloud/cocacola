# Projeto Cocacola - Conexão com Banco de Dados

Este projeto configura uma conexão com banco de dados PostgreSQL usando Node.js e Express.

## Instalação

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/onlinestarlink27-cloud/cocacola.git
   cd cocacola
   ```

2. **Instale as dependências:**
   ```bash
   npm install
   ```

3. **Configure as variáveis de ambiente:**
   - Crie um arquivo `.env` baseado em `.env.example`
   - Preencha com suas credenciais de banco de dados

   ```bash
   cp .env.example .env
   ```

4. **Configure seu banco de dados PostgreSQL:**
   ```sql
   CREATE DATABASE cocacola_db;
   ```

## Como Usar

**Inicie o servidor:**
```bash
npm start
```

Para desenvolvimento com hot-reload:
```bash
npm run dev
```

## Testando a Conexão

Abra seu navegador ou use curl/Postman:
```bash
curl http://localhost:3000/api/health
```

Se a conexão estiver ok, você receberá:
```json
{
  "status": "OK",
  "database": "Conectado",
  "timestamp": "2026-07-15T21:45:00.000Z"
}
```

## Estrutura do Projeto

```
cocacola/
├── server.js          # Arquivo principal do servidor
├── db.js              # Configuração de conexão com BD
├── package.json       # Dependências do projeto
├── .env.example       # Template de variáveis de ambiente
└── README.md          # Este arquivo
```

## Próximos Passos

1. Configure seu banco de dados com as tabelas necessárias
2. Crie rotas específicas para suas funcionalidades
3. Implante em um servidor (Heroku, AWS, DigitalOcean, etc.)

## Suporte

Para dúvidas ou problemas, verifique as configurações em `.env` e certifique-se de que o PostgreSQL está rodando.
