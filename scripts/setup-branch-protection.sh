#!/bin/bash

# 🔒 Script de Configuração de Proteção da Branch
# Este script configura automaticamente as proteções da branch main

echo "🚀 Configurando proteção da branch main..."

# Verificar se GitHub CLI está instalado
if ! command -v gh &> /dev/null; then
    echo "❌ GitHub CLI não encontrado. Instale com:"
    echo "   winget install GitHub.cli"
    exit 1
fi

# Verificar se está logado
if ! gh auth status &> /dev/null; then
    echo "🔐 Fazendo login no GitHub..."
    gh auth login
fi

echo "📋 Configurando proteções da branch main..."

# Configurar proteção da branch
gh api repos/LucasCleffi/fundamentos-reactjs/branches/main/protection \
  --method PUT \
  --field required_status_checks='{
    "strict": true,
    "contexts": ["test", "type-check", "security"]
  }' \
  --field enforce_admins=true \
  --field required_pull_request_reviews='{
    "required_approving_review_count": 1,
    "dismiss_stale_reviews": true,
    "require_code_owner_reviews": true
  }' \
  --field restrictions=null \
  --field required_conversation_resolution=true \
  --field required_linear_history=false

if [ $? -eq 0 ]; then
    echo "✅ Proteção da branch configurada com sucesso!"
    echo ""
    echo "📋 Configurações aplicadas:"
    echo "   ✅ Require PR before merging"
    echo "   ✅ Require 1 approval"
    echo "   ✅ Dismiss stale reviews"
    echo "   ✅ Require code owner reviews"
    echo "   ✅ Require status checks: test, type-check, security"
    echo "   ✅ Require conversation resolution"
    echo "   ✅ Apply rules to administrators"
    echo ""
    echo "🧪 Para testar:"
    echo "   1. Faça push desta branch"
    echo "   2. Abra um PR"
    echo "   3. Tente fazer merge sem aprovação (será bloqueado)"
    echo "   4. Solicite review e aprove"
    echo "   5. Agora o merge será liberado"
else
    echo "❌ Erro ao configurar proteção da branch"
    echo "💡 Configure manualmente em: Settings > Branches > Add rule"
fi
