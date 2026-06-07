# 1. Fase de Build
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app_build # Definindo um diretório de trabalho claro

COPY ["Aegis.Api/Aegis.Api.csproj", "Aegis.Api/"]
RUN dotnet restore "Aegis.Api/Aegis.Api.csproj"
COPY . .
RUN dotnet publish "Aegis.Api/Aegis.Api.csproj" -c Release -o /app/publish

# 2. Fase de Runtime
FROM mcr.microsoft.com/dotnet/aspnet:8.0 AS runtime
WORKDIR /app_aegis # DIRETÓRIO DE TRABALHO definido conforme pedido

# USUÁRIO NÃO PRIVILEGIADO (Nome sugerido: 'fiapuser')
RUN useradd -m fiapuser && chown -R fiapuser /app_aegis
USER fiapuser

# VARIÁVEL DE AMBIENTE (Exigência do exercício)
ENV APP_VERSION="1.0.0"

EXPOSE 8080

COPY --from=build --chown=fiapuser /app/publish .

ENTRYPOINT ["dotnet", "Aegis.Api.dll"]