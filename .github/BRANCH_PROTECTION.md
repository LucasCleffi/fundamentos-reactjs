name: 🔒 Configuração de Proteção da Branch

# PASSO A PASSO - Configuração Manual no GitHub

## 1️⃣ **Acessar Configurações**
1. Vá para seu repositório no GitHub
2. Clique em **Settings** (aba superior)
3. No menu lateral, clique em **Branches**
4. Clique em **Add rule** ou **Add protection rule**

## 2️⃣ **Configurações Básicas**
```
Branch name pattern: main
```

## 3️⃣ **Configurações de Pull Request** ⭐
```
✅ Require a pull request before merging
  ✅ Require approvals: 1 (ou mais se preferir)
  ✅ Dismiss stale PR approvals when new commits are pushed
  ✅ Require review from code owners (se tiver arquivo CODEOWNERS)
  ✅ Restrict pushes that create new files (opcional)
```

## 4️⃣ **Configurações de Status Checks**
```
✅ Require status checks to pass before merging
  ✅ Require branches to be up to date before merging
  
  Status checks required:
  ✅ test (Tests & Quality Checks)
  ✅ type-check (TypeScript Check)  
  ✅ security (Security Audit)
```

## 5️⃣ **Configurações Avançadas**
```
✅ Require conversation resolution before merging
✅ Require signed commits (recomendado para projetos empresariais)
✅ Require linear history (força rebase, evita merge commits)
✅ Include administrators (aplica regras para admins também)
✅ Allow force pushes (❌ deixe desmarcado)
✅ Allow deletions (❌ deixe desmarcado)
```

---

# CONFIGURAÇÃO AUTOMÁTICA VIA GITHUB CLI

## 🚀 **Opção 1: GitHub CLI (Recomendado)**
```bash
# Instalar GitHub CLI se não tiver
winget install GitHub.cli

# Fazer login
gh auth login

# Configurar proteção da branch
gh api repos/LucasCleffi/fundamentos-reactjs/branches/main/protection \
  --method PUT \
  --field required_status_checks='{"strict":true,"contexts":["test","type-check","security"]}' \
  --field enforce_admins=true \
  --field required_pull_request_reviews='{"required_approving_review_count":1,"dismiss_stale_reviews":true}' \
  --field restrictions=null \
  --field required_conversation_resolution=true \
  --field required_linear_history=false
```

## 🛠️ **Opção 2: Script PowerShell (Windows)**
```powershell
# Salve como: configure-branch-protection.ps1
$owner = "LucasCleffi"
$repo = "fundamentos-reactjs"
$token = "seu_github_token_aqui"

$headers = @{
    "Authorization" = "Bearer $token"
    "Accept" = "application/vnd.github.v3+json"
}

$body = @{
    required_status_checks = @{
        strict = $true
        contexts = @("test", "type-check", "security")
    }
    enforce_admins = $true
    required_pull_request_reviews = @{
        required_approving_review_count = 1
        dismiss_stale_reviews = $true
        require_code_owner_reviews = $false
    }
    restrictions = $null
    required_conversation_resolution = $true
    required_linear_history = $false
} | ConvertTo-Json -Depth 3

Invoke-RestMethod -Uri "https://api.github.com/repos/$owner/$repo/branches/main/protection" -Method PUT -Headers $headers -Body $body -ContentType "application/json"
```

---

# VERIFICAÇÃO E TESTE

## ✅ **Como Verificar se Está Funcionando**
```bash
# Verificar proteções via CLI
gh api repos/LucasCleffi/fundamentos-reactjs/branches/main/protection

# Verificar via web
# Vá para Settings > Branches e veja as regras aplicadas
```

## 🧪 **Testando o Sistema**
```bash
# 1. Crie um PR
git push origin "#001--docs-padrão-craição-braches"

# 2. Tente fazer merge sem aprovação
# ❌ Será bloqueado com: "Review required"

# 3. Solicite review de outro desenvolvedor
# ✅ Após aprovação, o merge será liberado
```

---

# CONFIGURAÇÕES ESPECÍFICAS RECOMENDADAS

## 👥 **Para Projetos em Equipe**
```
✅ Require approvals: 2
✅ Dismiss stale reviews: true
✅ Require code owner reviews: true
✅ Include administrators: true
```

## 🏠 **Para Projetos Pessoais/Solo**
```
✅ Require approvals: 1
✅ Dismiss stale reviews: true
✅ Require code owner reviews: false
✅ Include administrators: false (você pode ser exceção)
```

## 🏢 **Para Projetos Empresariais**
```
✅ Require approvals: 2+
✅ Dismiss stale reviews: true
✅ Require code owner reviews: true
✅ Require signed commits: true
✅ Require linear history: true
✅ Include administrators: true
```

---

# ARQUIVO CODEOWNERS (Opcional)

## 📝 **Criar arquivo .github/CODEOWNERS**
```bash
# Arquivo: .github/CODEOWNERS
# Exemplo de configuração

# Global owners
* @LucasCleffi

# Specific directories
/src/ @LucasCleffi
/.github/ @LucasCleffi
/docs/ @LucasCleffi

# Specific files
package.json @LucasCleffi
*.md @LucasCleffi
```
