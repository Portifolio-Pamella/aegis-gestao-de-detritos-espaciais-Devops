# Usa a imagem oficial do SDK para build
FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build
WORKDIR /app
COPY . .
RUN dotnet publish -c Release -o out

# Imagem final
FROM mcr.microsoft.com/dotnet/aspnet:8.0
WORKDIR /app

# Criando usuário não privilegiado conforme regra 2.1
RUN adduser -u 1001 --disabled-password --gecos "" appuser
USER appuser

COPY --from=build /app/out .
EXPOSE 8080
ENTRYPOINT ["dotnet", "SuaApp.dll"]