# 📋 Guia de Branches e Padrões de Desenvolvimento

> **Projeto**: Fundamentos ReactJS  
> **Repositório**: fundamentos-reactjs  
> **Branch Atual**: `#001--docs-padrão-craição-braches` (exemplo prático)

---

## 🌳 **Estratégia de Branching**

### **🎯 Branch Principal**
```
main
└── Código estável e pronto para produção
└── Base para todas as outras branches
└── Protegida contra pushes diretos
└── CI/CD automático configurado
```

### **🚀 Branches de Feature/Development**
```
Padrão de Nomenclatura:
- PascalCase para features específicas
- Descritivo e objetivo
- Exemplo atual:"[#]+[001]--[Finalizando-Sidebar]"


### **🔧 Branches de Correção**
```
fix/problema-especifico
hotfix/correcao-urgente

Exemplos:
✅ fix/sidebar-alignment
✅ fix/header-responsive
✅ hotfix/build-error
```

### **📦 Branches de Release**
```
release/v1.0.0
release/v1.1.0

Para preparar versões específicas
```

---

## 💻 **Workflow Prático - Exemplo com nossa Branch Atual**

### **🎯 Cenário Real: `Finalizando-Sidebar`**

```bash
# 1. Criamos a branch a partir da main
git checkout main
git checkout -b Finalizando-Sidebar

# 2. Desenvolvemos a funcionalidade
# - Criamos Sidebar.jsx
# - Estilizamos com Sidebar.module.css
# - Ajustamos CSS global
# - Implementamos componentes

# 3. Fazemos commits organizados
git add .
git commit -m "feat: implementar componente Sidebar com profile"
git commit -m "style: ajustar alinhamento e hover states"
git commit -m "fix: corrigir variáveis CSS faltantes"

# 4. Enviamos para o GitHub
git push origin Finalizando-Sidebar

# 5. Abrimos Pull Request para main
# 6. Após aprovação, fazemos merge
```

---

## 📝 **Padrões de Commit (Conventional Commits)**

### **🏷️ Tipos de Commit**
```
feat:     ✨ Nova funcionalidade
fix:      🐛 Correção de bug
style:    💄 Mudanças de estilo/CSS
refactor: ♻️  Refatoração sem mudança de comportamento
docs:     📚 Documentação
test:     🧪 Testes
chore:    🔧 Configurações e dependências
perf:     ⚡ Melhorias de performance
```

### **📋 Exemplos Baseados no Projeto Atual**
```bash
✅ feat: implementar componente Sidebar com avatar
✅ style: ajustar responsividade do Header
✅ fix: corrigir alinhamento dos posts
✅ refactor: extrair lógica de formatação para utils
✅ docs: atualizar README com instruções de setup
✅ chore: configurar ESLint e Prettier
```

---

## 🎨 **Diretrizes de Código Limpo (Uncle Bob)**

### **📐 Princípios SOLID**
```typescript
// ✅ Single Responsibility - Cada componente tem uma função
const Header = () => {
  return <header>...</header>; // Só renderiza o cabeçalho
};

const Sidebar = () => {
  return <aside>...</aside>; // Só renderiza a barra lateral
};

// ✅ Dependency Inversion - Injete dependências
const Post = ({ author, content, publishedAt }) => {
  return <article>...</article>;
};
```

### **🧹 Código Limpo em React**
```jsx
// ❌ Evite - Nomes genéricos
const Component1 = () => { ... };
const data = { ... };

// ✅ Prefira - Nomes descritivos
const PostComponent = () => { ... };
const userProfileData = { ... };

// ❌ Evite - Funções grandes
const BigComponent = () => {
  // 100+ linhas de código
};

// ✅ Prefira - Componentes pequenos e focados
const Header = () => { ... };
const PostList = () => { ... };
const PostItem = () => { ... };
```

### **📁 Estrutura de Arquivos**
```
src/
├── components/          # Componentes reutilizáveis
│   ├── Header/
│   │   ├── Header.jsx
│   │   └── Header.module.css
│   └── Sidebar/
│       ├── Sidebar.jsx
│       └── Sidebar.module.css
├── pages/              # Páginas específicas
├── hooks/              # Custom hooks
├── utils/              # Funções utilitárias
└── styles/             # Estilos globais
    └── global.css
```

---

## 🔄 **Pull Request Guidelines**

### **📝 Template de PR**
```markdown
## 📋 Descrição
Implementação do componente Sidebar conforme design do Figma.

## 🎯 O que foi feito
- [x] Criado componente Sidebar.jsx
- [x] Implementado CSS Modules para estilização
- [x] Adicionado avatar e informações do usuário
- [x] Implementado botão de editar perfil

## 🧪 Como testar
1. Execute `npm run dev`
2. Navegue para a página principal
3. Verifique se a sidebar está visível
4. Teste o hover no botão de editar

## 📸 Screenshots
<!-- Adicione imagens se necessário -->

## 🔗 Issues relacionadas
Closes #123
```

### **✅ Checklist antes do Merge**
- [ ] Código revisado por pelo menos uma pessoa
- [ ] Testes passando (`npm test`)
- [ ] Build funcionando (`npm run build`)
- [ ] Lint sem erros (`npm run lint`)
- [ ] Documentação atualizada se necessário

---

## 🤖 **CI/CD Automático - GitHub Actions**

### **🚀 Configuração Automática**
```yaml
# Arquivo: .github/workflows/ci.yml
# Executa automaticamente em:
- Pull Requests para main
- Push para main

Testes executados:
✅ ESLint (qualidade de código)
✅ TypeScript (verificação de tipos)
✅ Build (compilação)
✅ Security Audit (vulnerabilidades)
✅ Múltiplas versões do Node.js (18.x, 20.x)
```

### **🛡️ Proteção da Branch Main**
```
Configurações aplicadas:
- ✅ Require PR before merging
- ✅ Require status checks to pass
- ✅ Require conversation resolution
- ✅ Dismiss stale reviews
- ✅ Include administrators
```

### **📋 Como Funciona**
```bash
# 1. Você cria um PR
git push origin sua-branch

# 2. GitHub Actions executa automaticamente:
🔍 Verificando código com ESLint...
📝 Checando tipos TypeScript...
🏗️ Fazendo build do projeto...
🔒 Auditando segurança...

# 3. Se tudo passar ✅:
✅ All checks have passed
✅ This branch is ready to merge

# 4. Se houver erro ❌:
❌ Some checks failed
❌ Review required changes
```

### **🔧 Comandos para Testar Localmente**
```bash
# Antes de fazer push, teste localmente:
npm run lint        # ✅ ESLint
npm run build       # ✅ Build
npx tsc --noEmit    # ✅ TypeScript
npm audit           # ✅ Security
```

---

## 🚀 **Comandos Úteis**

```bash
# Verificar branch atual
git branch

# Trocar de branch
git checkout main
git checkout "#001--docs-padrão-craição-braches"

# Criar nova branch
git checkout -b NovaBranch

# Ver status dos arquivos
git status

# Ver diferenças
git diff

# Histórico de commits
git log --oneline

# Sincronizar com repositório remoto
git pull origin main
git push origin "#001--docs-padrão-craição-braches"

# Verificar status do CI/CD
gh pr status
gh pr checks
```

---

## 📚 **Referências e Recursos**

- [Conventional Commits](https://www.conventionalcommits.org/pt-br/)
- [Clean Code - Uncle Bob](https://github.com/ryanmcdermott/clean-code-javascript)
- [React Best Practices](https://react.dev/learn)
- [CSS Modules Documentation](https://github.com/css-modules/css-modules)
- [Git Flow Workflow](https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow)
- [GitHub Actions Documentation](https://docs.github.com/en/actions)
- [Branch Protection Rules](https://docs.github.com/en/repositories/configuring-branches-and-merges-in-your-repository)

---

> **💡 Dica**: Mantenha commits pequenos e frequentes. É melhor ter 5 commits pequenos do que 1 commit gigante!
> **🤖 Automação**: Com CI/CD configurado, você pode confiar que o código está sempre testado antes do merge!
