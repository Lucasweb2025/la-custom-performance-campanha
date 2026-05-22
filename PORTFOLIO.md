# Guia — GitHub + LinkedIn

## 1. Subir para o GitHub

### Pré-requisitos

- Conta em [github.com](https://github.com)
- [Git](https://git-scm.com/download/win) instalado
- (Opcional) [GitHub CLI](https://cli.github.com/): `gh auth login`

### Passos no PowerShell

```powershell
cd "c:\Users\LucasSantosLACustom\OneDrive - L.A Custom\Documentos\CAMPANHA DE VENDAS"

git init
git add .
git status
git commit -m "feat: campanha de vendas L.A CUSTOM com Firebase e gamificação"

git branch -M main
```

No site GitHub: **New repository** → nome sugerido: `la-custom-performance-campanha` → **não** marque README (já existe local).

```powershell
git remote add origin https://github.com/SEU_USUARIO/la-custom-performance-campanha.git
git push -u origin main
```

> `gestores.config.js` **não** vai para o GitHub (está no `.gitignore`). Quem clonar usa `gestores.config.example.js`.

### Deixar o repositório “bonito” no GitHub

1. **About** (lado direito do repo) → descrição curta + tópicos: `react`, `firebase`, `firestore`, `tailwindcss`, `gamification`
2. Marque **Add a website** com o link Netlify/Firebase quando tiver
3. Adicione 2–4 **screenshots** na pasta `docs/` (login, ranking, painel gerente) e referencie no README
4. Ative **GitHub Pages** só se quiser mirror estático (opcional; Netlify já resolve)

---

## 2. LinkedIn — projeto em Destaques

**Caminho:** Perfil → **Adicionar seção do perfil** → **Projeto** (ou **Destaques**)

| Campo | Sugestão |
|-------|----------|
| **Nome** | L.A CUSTOM — Programa Performance Premium |
| **Datas** | mês/2026 – Presente |
| **Associado a** | L.A CUSTOM (ou “Projeto pessoal / freelance” conforme política da empresa) |
| **URL** | Link do repositório GitHub + link da demo (Netlify) |
| **Descrição** | Use o texto abaixo |

### Texto para colar (descrição do projeto)

```
Desenvolvi uma plataforma web de campanha de vendas gamificada para rede de concessionárias premium.

• React 18 + Tailwind — interface dark/gold e ranking em tempo real
• Firebase Auth e Firestore — login, perfis, contratos e aprovação por gerência
• Regras de negócio: tiers Bronze→Black, combos, multiplicadores e validação Premium
• Papéis consultor/gerente, histórico de vendas, export CSV e recuperação de senha
• Deploy estático (Netlify/Firebase Hosting) sem dependência de servidor próprio

Repositório: [seu link GitHub]
Demo: [seu link Netlify]
```

### Post opcional (anúncio)

```
🚀 Novo projeto no portfólio: campanha de vendas gamificada para concessionárias (L.A CUSTOM).

Stack: React, Firebase (Auth + Firestore), Tailwind.
Destaques: ranking ao vivo, painel de aprovação para gerentes, tiers e combos com regras de pontuação.

Código aberto no GitHub: [link]
#react #firebase #webdevelopment #javascript

```

---

## 3. Checklist antes de publicar

- [ ] Demo online funcionando (Netlify + domínio no Firebase Auth)
- [ ] README com link da demo e do LinkedIn
- [ ] Screenshots em `docs/` (sem dados reais de clientes)
- [ ] Confirmar com a empresa se pode exibir marca **L.A CUSTOM** publicamente
- [ ] `gestores.config.js` fora do Git (já no `.gitignore`)
