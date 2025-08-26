# 📋 Guia de Branches e Padrões de Desenvolvimento

> **Projeto**: Fundamentos ReactJS  
> **Repositório**: fundamentos-reactjs  
> **Branch Atual**: `#001--docs-padrão-craição-braches`

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
- Formato: #[número]--[descrição-da-feature]
- Exemplo: #001--docs-padrão-craição-braches
- Exemplo: #002--implementar-sidebar
- Exemplo: #003--adicionar-header
```

### **🔧 Branches de Correção**
```
fix/problema-especifico
hotfix/correcao-urgente

Exemplos:
✅ fix/sidebar-alignment
✅ fix/header-responsive
✅ hotfix/build-error
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

### **📋 Exemplos**
```bash
✅ feat: implementar componente Sidebar
✅ style: ajustar responsividade do Header
✅ fix: corrigir alinhamento dos posts
✅ docs: atualizar README com instruções
✅ chore: configurar ESLint e Prettier
```

---

## 🎨 **Diretrizes de Código Limpo**

### **📐 Princípios SOLID**
```typescript
// ✅ Single Responsibility - Cada componente tem uma função
const Header = () => {
  return <header>...</header>;
};

// ✅ Dependency Inversion - Injete dependências
const Post = ({ author, content, publishedAt }) => {
  return <article>...</article>;
};
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

## � **Comandos Git Úteis**

```bash
# Verificar branch atual
git branch

# Criar nova branch
git checkout -b "#002--nova-feature"

# Trocar de branch
git checkout main
git checkout "#001--docs-padrão-craição-braches"

# Ver status e diferenças
git status
git diff

# Commits
git add .
git commit -m "feat: implementar nova funcionalidade"

# Push e PR
git push origin "#002--nova-feature"
gh pr create --title "Nova Feature" --body "Descrição da feature"
```

---

## 📚 **Referências**

- [Conventional Commits](https://www.conventionalcommits.org/pt-br/)
- [Clean Code - Uncle Bob](https://github.com/ryanmcdermott/clean-code-javascript)
- [React Best Practices](https://react.dev/learn)
- [GitHub Actions Documentation](https://docs.github.com/en/actions)

---

> **💡 Dica**: Mantenha commits pequenos e frequentes!
> **🤖 Automação**: CI/CD configurado automaticamente testa seu código!
