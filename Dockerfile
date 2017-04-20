FROM microsoft/aspnetcore-build
WORKDIR /app
EXPOSE 3000
COPY . .
RUN dotnet restore
RUN dotnet publish -o ./out -c Release
ENTRYPOINT dotnet ./out/myweb.dll
