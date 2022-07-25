# PlataformaOceano tecnologias adotadas (Arquitetura)
1 - Backend foi adotado arquitetura DDD
2 - Frontend foi adotado MVC

# PlataformaOceano tecnologias adotadas (backend)
1 - C# com .net
2 - MSSQL
3 - Dapper
4 - Linq

# PlataformaOceano tecnologias adotadas (frontend)
1 - Angular
2 - Node version 16.13.0
3 - Typescripti version 4.7.4
4 - Angular client version 14.0.5
 
# Geração dos arquivos do banco de dados
1 - Abrir o projeto do backend no visual studio
2 - Dentro do projeto Database existe um script chamado CreateDatabase.sql dentro da pasta create, abrir ele no MSSQL e rodar para a geração dos arquivos iniciais do banco de dados
3 - Ainda dentro do Database existe um script chamado KartPilotList.sql dentro da pasta procedure, abrir ele no MSSQL e rodar para a geração dos arquivos iniciais do banco de dados

# Geração do backend
1 - Buildar todo o projeto
2 - Rodar a WebAPI para subir o swagger

# Geração do frontend
1 - Atualizar as versões conforme as descrições acima
2 - Rodar o comando ng build
3 - Rodar o comando ng serve --open