# Configuração Firebase — Campanha L.A Customs

## 1. Authentication
- Console → **Authentication** → **E-mail/Senha** → Ativar

## 2. Firestore Rules
- Console → **Firestore** → **Regras**
- Cole o conteúdo do arquivo `firestore.rules` desta pasta
- Clique em **Publicar**

## 3. Gestores

| E-mail | Perfil |
|--------|--------|
| lucaspweb@gmail.com | Gestor (implantação) |
| fabio.mena@lacustom.com.br | Gerente geral |

Se alterar a lista, edite **`gestores.config.js`** e **`firestore.rules`** (função `isGestorEmail`) → **Publicar** regras.

### Opção A — Cadastro pelo app (recomendado para você)
1. Abra `index.html` → **Cadastre-se**
2. Use o **mesmo e-mail** que está em `gestores.config.js`
3. Chave `LA2026` → você entra automaticamente como **gerente**

### Opção B — Manual no console (gerente geral depois)
1. **Authentication** → **Adicionar usuário**
2. **Firestore** → `users` → documento = **UID** com `role: gerente`

## 4. Consultores
- Cadastram-se pela tela **Cadastre-se** (chave corporativa: `LA2026`)
- Recebem automaticamente `role: consultor`

## 5. Testar
- Abra `index.html` no navegador (ou hospede no Firebase Hosting)
- Login com gerente → vê Painel do Gerente
- Cadastro/login consultor → lança venda → gerente aprova

## 6. (Opcional) Config da campanha
Coleção `config` → documento `campanha`:
- `chaveCadastro`: `LA2026`
