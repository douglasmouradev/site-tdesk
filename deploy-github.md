# 🚀 Como fazer Upload para o GitHub

## 📋 Passo a Passo

### 1. Crie o Repositório no GitHub
1. Acesse: https://github.com/new
2. Nome do repositório: `site-tdesk`
3. Descrição: "Site de divulgação TDesk Solutions"
4. Deixe **público** (para usar GitHub Pages grátis)
5. **NÃO** marque "Initialize with README"
6. Clique em **"Create repository"**

### 2. Copie a URL do Repositório
Após criar, copie a URL (exemplo: `https://github.com/seu-usuario/site-tdesk.git`)

### 3. Execute os Comandos no Terminal

Abra o PowerShell na pasta `site-tdesk` e execute:

```powershell
# Conecte ao repositório remoto
git remote add origin https://github.com/SEU-USUARIO/site-tdesk.git

# Renomeie a branch para main
git branch -M main

# Faça o push
git push -u origin main
```

### 4. Configure GitHub Pages (Opcional)

1. No repositório, vá em **Settings**
2. No menu lateral, clique em **Pages**
3. Em "Source", selecione **main** branch
4. Clique em **Save**

Seu site estará disponível em: `https://seu-usuario.github.io/site-tdesk`

## 📝 Comandos Rápidos (Copiar e Colar)

Substitua `SEU-USUARIO` pelo seu usuário do GitHub:

```powershell
cd "C:\Users\Lab Douglas\Desktop\sistema web titanium\site-tdesk"

git remote add origin https://github.com/SEU-USUARIO/site-tdesk.git

git branch -M main

git push -u origin main
```

## ✅ Pronto!

Após o push, seu repositório estará disponível no GitHub!

---

**Nota:** Se você já tem um repositório criado, use apenas os comandos de push.

