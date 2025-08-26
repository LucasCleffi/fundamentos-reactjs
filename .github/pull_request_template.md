name: 📋 Pull Request Template

# 🎯 Descrição
<!-- Descreva detalhadamente o que foi implementado -->
Este PR adiciona/modifica/corrige...

### � Contexto
<!-- Por que esta mudança é necessária? -->

### 🔗 Issues relacionadas
<!-- Referencie issues relacionadas -->
- Closes #
- Refs #
- Fixes #

---

## 🔄 Tipo de mudança
<!-- Marque todas as opções que se aplicam -->
- [ ] 🐛 **Bug fix** - correção que resolve um problema
- [ ] ✨ **Nova feature** - funcionalidade que adiciona algo novo
- [ ] 💥 **Breaking change** - mudança que quebra compatibilidade
- [ ] 📚 **Documentação** - apenas mudanças na documentação
- [ ] 🎨 **Style** - formatação, indentação, etc (sem mudança de lógica)
- [ ] ♻️ **Refactoring** - mudança que não adiciona feature nem corrige bug
- [ ] ⚡ **Performance** - mudança que melhora performance
- [ ] 🧪 **Test** - adição ou correção de testes
- [ ] 🔧 **Chore** - mudanças no build, dependências, etc
- [ ] 🚀 **Deploy** - mudanças relacionadas ao deploy

---

## 🧪 Etapas para testar
<!-- Descreva passo a passo como testar suas mudanças -->

### 🏗️ Setup inicial
```bash
git checkout branch-name
npm install
npm run dev
```

### 📋 Passos de teste
1. **Navegue para** [URL ou página específica]
2. **Execute** [ação específica]
3. **Verifique que** [resultado esperado]
4. **Teste edge cases**:
   - [ ] Caso 1: [descrição]
   - [ ] Caso 2: [descrição]
   - [ ] Caso 3: [descrição]

### 🌐 Teste em diferentes navegadores
- [ ] Chrome
- [ ] Firefox
- [ ] Safari
- [ ] Edge

### 📱 Teste responsivo
- [ ] Desktop (1920px+)
- [ ] Tablet (768px - 1919px)
- [ ] Mobile (< 768px)

---

## ✅ Checklist de qualidade
<!-- Marque todas as opções que foram verificadas -->

### 🔍 Código
- [ ] 🧹 **Código limpo** - segue padrões do projeto
- [ ] 📝 **Comentários** - código complexo está comentado
- [ ] 🚫 **Debug removido** - console.logs e debugs desnecessários removidos
- [ ] 📦 **Imports organizados** - imports não utilizados removidos
- [ ] 🔧 **ESLint** - sem erros de linting
- [ ] 📘 **TypeScript** - tipagem correta aplicada

### 🧪 Testes
- [ ] ⚡ **Build** - `npm run build` passa sem erros
- [ ] � **Lint** - `npm run lint` passa sem erros
- [ ] 🧪 **Testes unitários** - todos os testes passam
- [ ] 🌐 **Testes de integração** - funcionalidade testada end-to-end

### 📚 Documentação
- [ ] 📖 **README** - atualizado se necessário
- [ ] 📝 **Comentários** - funções públicas documentadas
- [ ] 🔗 **Links** - documentação externa referenciada
- [ ] 📋 **Changelog** - mudanças importantes documentadas

### 🎨 UI/UX (se aplicável)
- [ ] 🎨 **Design** - segue o design system
- [ ] ♿ **Acessibilidade** - ARIA labels e navegação por teclado
- [ ] 📱 **Responsivo** - funciona em diferentes tamanhos de tela
- [ ] ⚡ **Performance** - carregamento otimizado
- [ ] 🌗 **Tema** - funciona em modo claro/escuro

### 🔒 Segurança
- [ ] �️ **Validação** - inputs validados adequadamente
- [ ] 🔐 **Sanitização** - dados sanitizados
- [ ] 🚫 **Exposição** - informações sensíveis não expostas
- [ ] 🔍 **Audit** - `npm audit` sem vulnerabilidades críticas

---

## 📸 Resultado visual
<!-- Adicione screenshots/videos mostrando as mudanças -->

### 🖼️ Screenshots
<!-- Substitua pelos screenshots reais -->

#### 🖥️ Desktop
| Antes | Depois |
|-------|--------|
| ![Antes Desktop](URL_DA_IMAGEM) | ![Depois Desktop](URL_DA_IMAGEM) |

#### 📱 Mobile
| Antes | Depois |
|-------|--------|
| ![Antes Mobile](URL_DA_IMAGEM) | ![Depois Mobile](URL_DA_IMAGEM) |

### 🎥 Demo em vídeo (opcional)
<!-- Link para video demo se necessário -->
[![Demo Video](URL_DA_THUMBNAIL)](URL_DO_VIDEO)

### 🎨 Design de referência (se aplicável)
<!-- Link para o design no Figma/Adobe XD -->
[🎨 Ver design no Figma](URL_DO_FIGMA)

---

## � Deploy e ambiente
<!-- Informações sobre deploy e ambiente -->

### 🌍 Ambiente de teste
- **URL de preview**: [link se disponível]
- **Branch**: `{{ .head.ref }}`
- **Ambiente**: [desenvolvimento/staging/produção]

### 📊 Impacto no bundle
<!-- Se aplicável, mostrar impacto no tamanho do bundle -->
```
Before: XXX kB
After:  XXX kB
Diff:   +/- XXX kB
```

---

## 📝 Notas adicionais
<!-- Qualquer informação adicional relevante -->

### 🎯 Pontos de atenção
- [ ] Ponto importante 1
- [ ] Ponto importante 2

### 🔮 Próximos passos
- [ ] Tarefa futura 1
- [ ] Tarefa futura 2

### ⚠️ Limitações conhecidas
- Limitação 1: [descrição]
- Limitação 2: [descrição]

---

## 🤖 Status automático

> **🔄 CI/CD**: Este PR será automaticamente testado pelo GitHub Actions
> 
> **✅ Checks obrigatórios**:
> - 🔍 ESLint
> - 📝 TypeScript  
> - 🏗️ Build
> - 🔒 Security Audit
> 
> **📊 Aguarde**: Todos os checks passarem antes de solicitar review
