name: 📋 Pull Request Template

# 🎯 Descrição
<!-- Descreva brevemente o que foi implementado -->

## 🔄 Tipo de mudança
<!-- Marque o tipo de mudança -->
- [ ] 🐛 Bug fix (correção que resolve um problema)
- [ ] ✨ Nova feature (funcionalidade que adiciona algo novo)
- [ ] 💥 Breaking change (mudança que quebra compatibilidade)
- [ ] 📚 Documentação (apenas mudanças na documentação)
- [ ] 🎨 Style (formatação, ponto e vírgula, etc.)
- [ ] ♻️ Refactoring (mudança que não adiciona feature nem corrige bug)
- [ ] ⚡ Performance (mudança que melhora performance)
- [ ] 🧪 Test (adição ou correção de testes)
- [ ] 🔧 Chore (mudanças no build, dependências, etc.)

## 🧪 Como testar
<!-- Descreva os passos para testar suas mudanças -->
1. Faça checkout da branch `{{ .head.ref }}`
2. Execute `npm install`
3. Execute `npm run dev`
4. Navegue para...
5. Verifique que...

## 📸 Screenshots (se aplicável)
<!-- Adicione screenshots para mudanças visuais -->

## ✅ Checklist
<!-- Marque todas as opções que se aplicam -->
- [ ] 🔍 Meu código segue os padrões do projeto
- [ ] 🧹 Removi logs de debug e comentários desnecessários
- [ ] 📝 Adicionei comentários em código complexo
- [ ] 📚 Atualizei a documentação se necessário
- [ ] ⚡ Minhas mudanças não quebram funcionalidades existentes
- [ ] 🧪 Adicionei testes para as novas funcionalidades
- [ ] 🚀 Build passa sem erros (`npm run build`)
- [ ] 🔍 ESLint passa sem erros (`npm run lint`)
- [ ] 📝 TypeScript passa sem erros
- [ ] 🔒 Não há vulnerabilidades de segurança introduzidas

## 🔗 Issues relacionadas
<!-- Referencie issues relacionadas -->
Closes #
Refs #

## 📝 Notas adicionais
<!-- Qualquer informação adicional relevante -->

---

> **🤖 Automação**: Este PR será automaticamente testado pelo GitHub Actions
> **📊 Status**: Verifique se todos os checks passaram antes do merge
