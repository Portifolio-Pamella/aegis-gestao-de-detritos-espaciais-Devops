"""# 🛰️ AEGIS - Plataforma de Gestão de Lixo Espacial

Projeto desenvolvido para otimizar a segurança orbital através da monitorização e gestão de detritos espaciais.

---

## 👥 Equipe
**Representante do Grupo:** 👤 **Pamella Christiny Chaves Brito** | `RM565206`

* 👤 **João Pedro Pereira Camilo** | `RM562005`
* 👤 **Lucas Matsubara Reis** | `RM565020`

---

## ☁️ Infraestrutura e Deploy (Azure)
Para este projeto, utilizamos uma infraestrutura em nuvem (Azure) com as seguintes configurações:

* **Nome da VM:** `aegis-gestao-detritos-espaciais`
* **Grupo de Recursos:** `GS_AEGIS`
* **IP Público:** `20.63.73.247`
* **Credenciais de Acesso:**
    * Usuário: `Admlnx`
    * Senha: `Fiap@2tdsvms`
* **Portas Utilizadas:** `8080`, `1521`, `9090`
* **Identificação de Containers:** Os nomes dos containers seguem um padrão de versionamento que inclui o RM da representante (`565206`) para rastreabilidade e organização acadêmica.

---

## 🎥 Vídeos de Apresentação
- [▶️ Vídeo de Explicação (Infra/Cloud)](https://youtu.be/y5fYgRVep60?si=vz71w5pOeTuaXz-I)
- [▶️ Video Pitch](https://youtu.be/QwVvUHkri4o?si=vpOtBC50kf3HHxid)
- [▶️ Apresentação do Projeto](https://youtu.be/qSeSL6MJgXI?si=GoC5-d16NxOGiAkA)

---

## 1. Problema Abordado
O crescimento exponencial de detritos espaciais em órbita terrestre baixa (LEO) — fenômeno conhecido como **Síndrome de Kessler** — cria uma ameaça crítica à integridade de satélites ativos, infraestruturas de telecomunicações e tripulações. Atualmente, a gestão dessas ameaças é fragmentada, com a ausência de um sistema centralizado que correlacione, em tempo real, a trajetória de detritos perigosos com a localização de ativos espaciais.

## 2. Objetivos da Solução
A Plataforma AEGIS visa transformar a segurança orbital através de:
* **Monitoramento Centralizado:** Consolidar dados de ativos e detritos em uma base íntegra.
* **Automação de Resposta:** Reduzir a latência operacional através de missões de interceptação automatizadas.
* **Visibilidade de Risco:** Permitir o cálculo imediato de risco de colisão.
* **Gestão de Ciclo de Vida:** Acompanhar desde a identificação do risco até a execução da missão.

---

## 3. Requisitos Técnicos
* **Arquitetura:** API REST com separação de camadas (Controllers, Services, Repositories).
* **Persistência:** Banco de Dados Oracle.
* **ORM:** Entity Framework Core.
* **Relacionamentos:** Mapeamento de 1:N e N:N conforme as regras de negócio.
* **Gestão de Banco:** Uso de Migrations para versionamento do esquema.

---

## 4. Como Executar

### Pré-requisitos
1. Ter o **.NET SDK** instalado.
2. Configurar a *Connection String* no `appsettings.json`.

### Instalação de Dependências
No terminal, dentro da pasta do projeto, execute:
```bash
dotnet add package Microsoft.EntityFrameworkCore
dotnet add package Microsoft.EntityFrameworkCore.Design
dotnet add package Oracle.EntityFrameworkCore
dotnet add package Microsoft.AspNetCore.Mvc