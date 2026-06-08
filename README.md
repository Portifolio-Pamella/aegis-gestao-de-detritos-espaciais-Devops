# AEGIS - Plataforma de Gestão de Lixo Espacial

Projeto desenvolvido para otimizar a segurança orbital através da monitorização e gestão de detritos espaciais.

## 👥 Integrantes
* **João Pedro Pereira Camilo** | RM562005
* **Lucas Matsubara Reis** | RM565020
* **Pamella Christiny Chaves Brito** | RM565206

---

## 1. Problema Abordado
O crescimento exponencial de detritos espaciais em órbita terrestre baixa (LEO) — fenômeno conhecido como Síndrome de Kessler — cria uma ameaça crítica à integridade de satélites ativos, infraestruturas de telecomunicações e tripulações. Atualmente, a gestão dessas ameaças é fragmentada, com a ausência de um sistema centralizado que correlacione, em tempo real, a trajetória de detritos perigosos com a localização de ativos espaciais.

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

Aegis - Gestão de Detritos Espaciais
1. Descrição do Projeto
O sistema Aegis é uma solução robusta voltada para a catalogação, monitoramento e gestão de detritos espaciais em órbita terrestre. Desenvolvido com uma arquitetura de microsserviços e conteinerização, o projeto visa garantir a sustentabilidade das operações espaciais através de uma API de alta performance que gerencia dados de detritos e empresas responsáveis.

2. Arquitetura do Projeto
O sistema utiliza uma abordagem conteinerizada para garantir a portabilidade e facilidade de deploy.

API: Desenvolvida em .NET 8 (ASP.NET Core).

Banco de Dados: Oracle Database 23ai Free (via Docker).

DevOps: Orquestração completa via docker-compose.

3. Como Executar o Projeto (How-to)
Pré-requisitos
Git instalado.

Docker e Docker Compose instalados.

Passos para execução
Clone o repositório:

Bash
git clone https://github.com/Portifolio-Pamella/aegis-gestao-de-detritos-espaciais-Devops.git
cd aegis-gestao-de-detritos-espaciais-Devops
Suba os containers:

Bash
sudo docker compose up -d --build
Verifique se os serviços estão ativos:

Bash
sudo docker ps
Acesso ao Swagger:
Abra seu navegador e acesse: http://<IP-DO-SERVIDOR>:8080/swagger/index.html

4. Testes e Evidências
Executando o CRUD via Swagger
Para testar a funcionalidade, utilize a interface do Swagger acessada no passo acima:

Localize o controlador DetritosEspaciais ou Empresa.

Realize o POST (criação). Nota: Certifique-se de preencher todos os campos obrigatórios.

Utilize o GET para verificar a persistência.

Utilize o PUT para atualizar registros.

Utilize o DELETE para remover registros.

Validando a Persistência no Banco (Oracle)
Para evidenciar que os dados estão sendo gravados no Oracle:

Acesse o container do banco:

Bash
sudo docker exec -it oracle_db_aegis bash
Conecte no SQLPlus:

Bash
sqlplus aegis_user/FiapPassword123@FREEPDB1
Execute o comando de persistência:

SQL
SELECT * FROM TB_EMPRESA_AEROESPACIAL;
5. Estrutura do Repositório
/Aegis.Api: Código fonte completo da API (.NET 8).


EXEMPLOS DE TESTES
Passo 1: Criar Empresa
JSON
{
  "nome": "SpaceX Solutions",
  "cnpj": "12345678000199",
  "paisOrigem": "EUA",
  "status": "ATIVO"
}
Passo 2: Criar Detrito
JSON
{
  "nome": "Detrito-001",
  "massaKg": 150.5,
  "tamanhoMetros": 2.5,
  "coordenadaX": 10.5,
  "coordenadaY": 20.0,
  "coordenadaZ": 30.5
}
Passo 3: Criar Satélite (Use o ID da empresa criada)
JSON
{
  "numeroSatelite": "STAR-001",
  "altitudeKm": 550.5,
  "empresaId": 1
}
Passo 4: Criar Alerta (Use o ID do Satélite e Detrito criados)
JSON
{
  "sateliteId": 1,
  "detritoId": 1,
  "statusGravidade": "ALTA"
}
Passo 5: Criar Chaser
JSON
{
  "nome": "Chaser-Alfa-01",
  "bateria": 95,
  "coordenadaX": 10.5,
  "coordenadaY": 20.0,
  "coordenadaZ": 5.0
}
Passo 6: Criar Missão de Interceptação (Use o ID do Alerta e Chaser criados)
JSON
{
  "alertaId": 1,
  "chaserId": 1,
  "dataExecucao": "2026-06-05T14:26:54.896",
  "status": "PENDENTE"
}

ESTAS SÃO AS TABELAS QUE TENHO TB_TUTOR

TB_PET

TB_CLINICA

TB_CONSULTA

TB_VETERINARIO



docker-compose.yml: Orquestração de serviços (API + Oracle).

Dockerfile: Definição de build da imagem da API.
