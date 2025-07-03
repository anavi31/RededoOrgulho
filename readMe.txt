depêndencias necessárias, para instalar no terminal na pasta do projeto:

npm init -y
npm install express body-parser bcrypt nodemailer csv-parser json2csv cors express-session passport passport-google-oauth20

para rodar o servidor:
node server.js

para rodar no chrome: http://localhost:3000/

estrutura dos arquivos:
redeorgulho/
├── public/                      # arquivos HTML e CSS
│   ├── cadastro.html
│   └── login.html
├── autenticacao.js             # lida com login, cadastro e validações
├── avaliacoes.csv              # banco de dados da avaliação (das estrelinhas) do suporte
├── codes.json                  # onde ficam os códigos de verificação
├── comentarios.json            # onde ficam os comentários do fórum, suporte e locais
├── email.js                    # função que envia e-mail com nodemailer
├── forum.csv                   # banco de dados que guarda autor, título e tag dos posts
├── forum.js                    # lida com timeline, posts, filtragem e comentários do fórum
├── locais.csv                  # banco de dados que guarda nome, cep e tag dos locais
├── locais.js                   # lida com timeline, filtragem e comentários dos locais
├── server.js                   # inicia o servidor
├── suporte.js                  # lida com envio da solicitação do suporte e comentários
├── users.csv                   # banco de dados dos usuários
└── utils.js                    # funções de leitura/escrita em CSV, códigos
