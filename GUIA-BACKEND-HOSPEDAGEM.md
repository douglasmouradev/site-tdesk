# 🚀 Guia para Equipe Backend - Hospedagem e Integração

## 📋 Visão Geral

Este documento contém todas as informações necessárias para a equipe de backend trabalhar com o site TDesk Solutions e hospedá-lo em produção.

## 🎯 Requisitos para Produção

### **Tecnologias Utilizadas**
- HTML5 + CSS3 + JavaScript Vanilla
- Font Awesome (CDN)
- Google Fonts (Inter)
- Chart.js (para gráficos futuros)

### **Dependências Externas (CDN)**
```html
<!-- Font Awesome -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">

<!-- Google Fonts -->
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<!-- Chart.js (se necessário) -->
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
```

## 🌐 Opções de Hospedagem

### **Opção 1: GitHub Pages** (Grátis - Recomendado)

#### **Configuração**:
1. Acesse: https://github.com/douglasmouradev/site-tdesk/settings/pages
2. Branch: `main`
3. Folder: `/ (root)`
4. Salve

#### **URL de Produção**:
```
https://douglasmouradev.github.io/site-tdesk
```

#### **Vantagens**:
- ✅ Grátis
- ✅ HTTPS automático
- ✅ CDN global
- ✅ Deploy automático a cada push
- ✅ Sem necessidade de servidor

#### **Limitantes**:
- ⚠️ Apenas sites estáticos
- ⚠️ Sem backend próprio
- ⚠️ Sem banco de dados

---

### **Opção 2: Vercel** (Grátis - Profissional)

#### **Instalação**:
```bash
npm i -g vercel
cd site-tdesk
vercel
```

#### **Configuração**:
- Framework: **Other**
- Output Directory: `.`
- Build Command: _(deixe vazio)_
- Install Command: _(deixe vazio)_

#### **URL de Produção**:
```
https://site-tdesk.vercel.app
```

#### **Vantagens**:
- ✅ Grátis
- ✅ HTTPS automático
- ✅ CDN global
- ✅ Deploy automático
- ✅ Custom domain
- ✅ Analytics

---

### **Opção 3: Netlify** (Grátis)

#### **Configuração**:
1. Acesse: https://netlify.com
2. Arraste a pasta `site-tdesk`
3. Configure:
   - Build command: _(vazio)_
   - Publish directory: `.`

#### **Vantagens**:
- ✅ Grátis
- ✅ HTTPS automático
- ✅ Deploy automático
- ✅ Form handling
- ✅ Custom domain

---

### **Opção 4: Servidor Próprio** (VPS/Dedicado)

#### **Requisitos**:
- Servidor Linux (Ubuntu, Debian)
- Apache ou Nginx
- SSL Certificate (Let's Encrypt)

#### **Configuração Apache**:
```apache
<VirtualHost *:80>
    ServerName site-tdesk.com
    ServerAlias www.site-tdesk.com
    DocumentRoot /var/www/site-tdesk
    
    <Directory /var/www/site-tdesk>
        Options Indexes FollowSymLinks
        AllowOverride All
        Require all granted
    </Directory>
</VirtualHost>
```

#### **Configuração Nginx**:
```nginx
server {
    listen 80;
    server_name site-tdesk.com www.site-tdesk.com;
    root /var/www/site-tdesk;
    index index.html;
    
    location / {
        try_files $uri $uri/ =404;
    }
}
```

#### **SSL com Let's Encrypt**:
```bash
sudo certbot --apache -d site-tdesk.com -d www.site-tdesk.com
```

---

### **Opção 5: AWS S3 + CloudFront** (Enterprise)

#### **Configuração**:
1. Crie um bucket S3
2. Configure static website hosting
3. Configure CloudFront como CDN
4. Configure SSL certificate

#### **Custo**:
- ~$1-5/mês (dependendo do tráfego)

---

## 🔗 Integração com Backend API

### **Endpoints Necessários** (Se precisar conectar a API)

```javascript
// Exemplo de integração futura
const API_BASE_URL = 'https://api.tdesksolutions.com';

// Endpoints sugeridos:
// GET  /api/tickets
// POST /api/tickets
// GET  /api/users
// POST /api/auth/login
// POST /api/contact
```

### **CORS Configuration** (No backend):
```javascript
// Node.js/Express
app.use(cors({
    origin: 'https://site-tdesk.com',
    credentials: true
}));

// PHP
header('Access-Control-Allow-Origin: https://site-tdesk.com');
```

---

## 📊 Variáveis de Ambiente

### **Configuração (.env)**
```env
# URLs
SITE_URL=https://site-tdesk.com
API_URL=https://api.tdesksolutions.com

# Configurações
NODE_ENV=production
GA_TRACKING_ID=G-XXXXXXXXXX
```

---

## 🔒 Segurança

### **Headers de Segurança** (Configurar no servidor):
```
Content-Security-Policy: default-src 'self'; script-src 'self' 'unsafe-inline' https://cdnjs.cloudflare.com https://fonts.googleapis.com; style-src 'self' 'unsafe-inline' https://cdnjs.cloudflare.com https://fonts.googleapis.com; font-src 'self' https://fonts.gstatic.com;
X-Frame-Options: DENY
X-Content-Type-Options: nosniff
Referrer-Policy: strict-origin-when-cross-origin
```

### **HTTPS**:
- ✅ Obrigatório em produção
- ✅ Configure redirect HTTP → HTTPS

---

## 📦 Deploy Automático

### **GitHub Actions** (.github/workflows/deploy.yml):
```yaml
name: Deploy to Production

on:
  push:
    branches: [ main ]

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: Deploy to Vercel
        uses: amondnet/vercel-action@v20
        with:
          vercel-token: ${{ secrets.VERCEL_TOKEN }}
          vercel-org-id: ${{ secrets.ORG_ID }}
          vercel-project-id: ${{ secrets.PROJECT_ID }}
```

---

## 🧪 Testes

### **Checklist Pré-Deploy**:
- [ ] Todas as imagens carregam corretamente
- [ ] Fonts carregam de CDN
- [ ] Responsividade em mobile/tablet/desktop
- [ ] Todos os links funcionam
- [ ] Formulários validam corretamente
- [ ] JavaScript sem erros no console
- [ ] SEO (meta tags, titles, descriptions)
- [ ] SSL/HTTPS configurado
- [ ] Performance (< 3s load time)

---

## 📈 Monitoramento

### **Google Analytics** (Adicionar ao site):
```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>
```

### **Ferramentas Recomendadas**:
- Google Analytics
- Google Search Console
- Uptime Robot (monitoramento)
- Lighthouse (performance)

---

## 🔄 Manutenção

### **Atualizações**:
1. Faça alterações localmente
2. Commit e push para GitHub
3. Deploy automático (se configurado)
4. Ou deploy manual conforme plataforma

### **Backup**:
- GitHub mantém histórico completo
- Faça backup periódico se usar servidor próprio

---

## 📞 Contato Backend

### **API de Contato** (Se necessário):
```javascript
// POST /api/contact
{
  "name": "Nome",
  "email": "email@example.com",
  "phone": "(71) 99380-1480",
  "message": "Mensagem"
}
```

---

## 🎯 Recomendação

Para começar rápido e com qualidade profissional:
1. **Use GitHub Pages** (grátis, fácil, funciona perfeitamente)
2. **Ative custom domain** (site-tdesk.com)
3. **Configure SSL** (automático no GitHub Pages)
4. **Configure Google Analytics**

**URL final:** `https://site-tdesk.com`

---

## 📚 Documentação Adicional

- **Repositório:** https://github.com/douglasmouradev/site-tdesk
- **Issues:** https://github.com/douglasmouradev/site-tdesk/issues
- **Documentação:** Ver arquivos neste repositório

---

**Desenvolvido com ❤️ - TDesk Solutions**

