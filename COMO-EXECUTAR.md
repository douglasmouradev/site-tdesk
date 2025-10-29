# 🚀 Como Executar o Site TDesk Solutions

## 📋 Métodos de Execução

### **Método 1: Clonar do GitHub** (Recomendado)

1. **Instale o Git** (se não tiver):
   - Download: https://git-scm.com/downloads

2. **Clone o repositório**:
   ```bash
   git clone https://github.com/douglasmouradev/site-tdesk.git
   cd site-tdesk
   ```

3. **Abra o arquivo**:
   - Dê duplo clique em `index.html`
   - Ou abra no navegador: `file:///caminho/para/site-tdesk/index.html`

### **Método 2: Servidor Local** (Para desenvolvimento)

#### **Com Python**:
```bash
cd site-tdesk
python -m http.server 8000
```
Acesse: `http://localhost:8000`

#### **Com Node.js**:
```bash
cd site-tdesk
npx serve .
```
Acesse: `http://localhost:3000`

#### **Com PHP**:
```bash
cd site-tdesk
php -S localhost:8000
```
Acesse: `http://localhost:8000`

### **Método 3: Copiar Arquivos Manualmente**

1. **Copie a pasta completa** para um pendrive ou nuvem
2. **Transfira para o outro computador**
3. **Abra** o arquivo `index.html` no navegador

### **Método 4: Hospedar Online** (Para acesso remoto)

#### **GitHub Pages** (Grátis):
1. Acesse: https://github.com/douglasmouradev/site-tdesk/settings/pages
2. Selecione branch `main`
3. Salve
4. Acesse: `https://douglasmouradev.github.io/site-tdesk`

#### **Vercel** (Grátis):
```bash
npm i -g vercel
cd site-tdesk
vercel
```

#### **Netlify** (Grátis):
1. Acesse: https://netlify.com
2. Arraste a pasta `site-tdesk`
3. Pronto!

## 📱 Requisitos

- **Navegador moderno** (Chrome, Firefox, Edge, Safari)
- **Conexão com internet** (para carregar Font Awesome e Google Fonts)

## 🔧 Troubleshooting

### **Fonts não carregam?**
- Verifique a conexão com internet
- As fontes do Google Fonts precisam de acesso à web

### **Imagens não aparecem?**
- Verifique se todos os arquivos estão na mesma pasta
- Nome dos arquivos deve ser exatamente: `logo-tdesk.png`

### **Animações não funcionam?**
- Use um navegador atualizado
- Verifique o console do navegador (F12) para erros

## 📞 Suporte

- **Repositório:** https://github.com/douglasmouradev/site-tdesk
- **Issues:** https://github.com/douglasmouradev/site-tdesk/issues

---

**Desenvolvido com ❤️ - TDesk Solutions**

