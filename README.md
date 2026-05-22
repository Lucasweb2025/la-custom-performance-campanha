# L.A CUSTOM — Programa Performance Premium

Plataforma web de **campanha de vendas gamificada** para rede de concessionárias: ranking em tempo real, lançamento de contratos, aprovação por gerência, tiers (Bronze → Black), combos e regras Premium.

> Projeto desenvolvido para operação real em produção (Firebase), com foco em UX premium e regras de negócio do programa.

![React](https://img.shields.io/badge/React-18-61DAFB?logo=react&logoColor=black)
![Firebase](https://img.shields.io/badge/Firebase-Auth%20%2B%20Firestore-FFCA28?logo=firebase&logoColor=black)
![Tailwind CSS](https://img.shields.io/badge/Tailwind-CSS-06B6D4?logo=tailwindcss&logoColor=white)

## Destaques (portfólio)

- **SPA em React 18** (sem build: Babel no browser) + Tailwind + design system dark/gold
- **Firebase Authentication** (e-mail/senha, recuperação de senha)
- **Firestore** com listeners em tempo real (`users`, `contratos`)
- **RBAC**: consultor vs gerente (painel de aprovação/recusa com motivo)
- **Gamificação**: pontos, multiplicadores, combos, tiers com regras Premium (Silver/Gold)
- **Ranking corporativo** e por unidade (7 concessionárias)
- **Exportação CSV** para gestores
- **Regras de segurança** Firestore (`firestore.rules`)
- Deploy estático: Netlify Drop / Firebase Hosting

## Stack

| Camada | Tecnologia |
|--------|------------|
| UI | React 18, Tailwind CSS, Font Awesome |
| Backend | Firebase Auth + Cloud Firestore |
| Hospedagem | Netlify / Firebase Hosting (estático) |

## Funcionalidades

| Papel | Capacidades |
|-------|-------------|
| **Consultor** | Cadastro, login, simulador de pontos, lançar venda, ranking, histórico (Minhas Vendas) |
| **Gerente** | Tudo do consultor + fila de aprovação, recusa com motivo, export CSV |

## Estrutura do repositório

```
├── index.html              # Aplicação principal
├── gestores.config.example.js
├── firestore.rules         # Regras de segurança (sincronizar e-mails com gestores)
├── firebase.json           # Firebase Hosting
├── FIREBASE_SETUP.md       # Setup do projeto Firebase
├── DEPLOY.md               # Publicação (Netlify / Firebase)
└── PUBLICAR.bat            # Script de deploy (Firebase CLI)
```

## Como rodar localmente

1. Clone o repositório.
2. Copie a config de gestores:
   ```bash
   copy gestores.config.example.js gestores.config.js
   ```
   Edite `gestores.config.js` com os e-mails autorizados (e alinhe `firestore.rules`).
3. Abra com **Live Server** (VS Code/Cursor) ou servidor HTTP local — evite `file://` (Firebase pode bloquear).
4. Configure seu projeto Firebase conforme `FIREBASE_SETUP.md`.

## Deploy

Instruções completas em [`DEPLOY.md`](DEPLOY.md).

Resumo Netlify: compacte `index.html` + `gestores.config.js` e use [Netlify Drop](https://app.netlify.com/drop). Adicione o domínio em **Firebase → Authentication → Domínios autorizados**.

## Segurança e privacidade

- `gestores.config.js` está no `.gitignore` (e-mails reais ficam só na sua máquina).
- A `apiKey` do Firebase no front-end é pública por design; a proteção vem das **Firestore Rules** e domínios autorizados no console.
- Não commite senhas, chaves de serviço ou dados de clientes.

## Autor

**Lucas Santos** — L.A CUSTOM  
LinkedIn: *(adicione seu perfil)*  
Demo ao vivo: *(adicione o link Netlify/Firebase após publicar)*

## Licença

Código disponível para visualização em portfólio. Uso comercial e marca **L.A CUSTOM** pertencem à empresa. Consulte o arquivo `LICENSE`.
