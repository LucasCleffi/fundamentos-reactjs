# 🔒 Script PowerShell para Configuração de Proteção da Branch
# Execute como Administrador se necessário

param(
    [string]$Owner = "LucasCleffi",
    [string]$Repo = "fundamentos-reactjs",
    [string]$Token = $env:GITHUB_TOKEN
)

Write-Host "🚀 Configurando proteção da branch main..." -ForegroundColor Green

# Verificar se o token foi fornecido
if (-not $Token) {
    Write-Host "❌ Token do GitHub não encontrado!" -ForegroundColor Red
    Write-Host "💡 Configure o token:" -ForegroundColor Yellow
    Write-Host "   1. Vá para GitHub > Settings > Developer settings > Personal access tokens"
    Write-Host "   2. Gere um token com permissões 'repo'"
    Write-Host "   3. Execute: `$env:GITHUB_TOKEN = 'seu_token_aqui'"
    Write-Host "   4. Execute este script novamente"
    exit 1
}

# Configurar headers
$headers = @{
    "Authorization" = "Bearer $Token"
    "Accept" = "application/vnd.github.v3+json"
    "User-Agent" = "PowerShell-Script"
}

# Configurar proteções
$protectionConfig = @{
    required_status_checks = @{
        strict = $true
        contexts = @("test", "type-check", "security")
    }
    enforce_admins = $true
    required_pull_request_reviews = @{
        required_approving_review_count = 1
        dismiss_stale_reviews = $true
        require_code_owner_reviews = $true
    }
    restrictions = $null
    required_conversation_resolution = $true
    required_linear_history = $false
} | ConvertTo-Json -Depth 4

try {
    Write-Host "📋 Aplicando configurações..." -ForegroundColor Yellow
    
    $uri = "https://api.github.com/repos/$Owner/$Repo/branches/main/protection"
    $response = Invoke-RestMethod -Uri $uri -Method PUT -Headers $headers -Body $protectionConfig -ContentType "application/json"
    
    Write-Host "✅ Proteção da branch configurada com sucesso!" -ForegroundColor Green
    Write-Host ""
    Write-Host "📋 Configurações aplicadas:" -ForegroundColor Cyan
    Write-Host "   ✅ Require PR before merging"
    Write-Host "   ✅ Require 1 approval"
    Write-Host "   ✅ Dismiss stale reviews"
    Write-Host "   ✅ Require code owner reviews"
    Write-Host "   ✅ Require status checks: test, type-check, security"
    Write-Host "   ✅ Require conversation resolution"
    Write-Host "   ✅ Apply rules to administrators"
    Write-Host ""
    Write-Host "🧪 Para testar:" -ForegroundColor Yellow
    Write-Host "   1. Faça push desta branch"
    Write-Host "   2. Abra um PR"
    Write-Host "   3. Tente fazer merge sem aprovação (será bloqueado)"
    Write-Host "   4. Solicite review e aprove"
    Write-Host "   5. Agora o merge será liberado"
    
} catch {
    Write-Host "❌ Erro ao configurar proteção da branch:" -ForegroundColor Red
    Write-Host $_.Exception.Message -ForegroundColor Red
    Write-Host ""
    Write-Host "💡 Alternativas:" -ForegroundColor Yellow
    Write-Host "   1. Configure manualmente em: GitHub > Settings > Branches > Add rule"
    Write-Host "   2. Verifique se o token tem permissões adequadas"
    Write-Host "   3. Use GitHub CLI: gh auth login && executar script bash"
}
