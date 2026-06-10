# Publicar o site — Firebase Hosting (Opção B)

Projeto: **lacustomsperformace**

URL após o deploy:
- **https://lacustomsperformace.web.app**
- **https://lacustomsperformace.firebaseapp.com**

**Custo:** plano gratuito (Spark) — suficiente para a campanha.

---

## Passo a passo (3 etapas)

### 1. Instalar Node.js
1. Abra **https://nodejs.org**
2. Baixe **LTS** → Instalar (Next, Next…)
3. Se o Windows pedir **administrador** → clique **Sim**
4. **Feche e abra** o Cursor/terminal depois

### 2. Ativar Hosting no Firebase (uma vez)
1. [Console Firebase](https://console.firebase.google.com/project/lacustomsperformace/hosting)
2. **Hosting** → **Começar** (se aparecer)

### 3. Publicar

**Forma fácil:** dê duplo clique em **`PUBLICAR.bat`** na pasta do projeto.

**Ou no PowerShell:**
```powershell
cd "c:\Users\LucasSantosLACustom\OneDrive - L.A Custom\Documentos\CAMPANHA DE VENDAS"
npm install -g firebase-tools
firebase login
firebase deploy --only hosting
```

Na primeira vez, o navegador abre para você entrar com a **mesma conta Google** do Firebase.

### Atualizar depois de mudanças
Duplo clique em **`PUBLICAR.bat`** de novo.

---

## Opção 2 — Pelo console (sem terminal)

1. [Firebase Console](https://console.firebase.google.com) → projeto **lacustomsperformace**
2. Menu **Hosting** → **Começar**
3. Siga o assistente (vai pedir o CLI na maioria dos casos)

A Opção 1 é mais rápida para atualizações.

---

## Depois do deploy — conferir no Firebase

**Authentication** → **Settings** → **Authorized domains**

Devem aparecer automaticamente:
- `lacustomsperformace.web.app`
- `lacustomsperformace.firebaseapp.com`

Se não aparecerem, adicione manualmente.

---

## Domínio próprio (opcional)

**Hosting** → **Adicionar domínio personalizado**  
Ex.: `campanha.lacustoms.com.br` (DNS na empresa)

---

## Arquivos publicados

- `index.html`
- `gestores.config.js`

Não sobem: backups, `.txt`, regras do Firestore (regras vão em **Firestore → Regras** no console).
