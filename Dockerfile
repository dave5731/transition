FROM mcr.microsoft.com/dotnet/sdk:7.0 as build-env

#RUN dotnet publish ./ci_cd_exp.csproj -c Release -o out --no-self-contained
#RUN dotnet publish  "C:\\Users\\Dave\\Desktop\\code\\ci_cd_exp\\ci_cd_exp.csproj" 

# Relayer the .NET SDK, anew with the build output
FROM mcr.microsoft.com/dotnet/sdk:7.0
COPY ./bin/Release/net7.0/ ./
EXPOSE 80
ENTRYPOINT [ "dotnet", "ci_cd_exp.dll" ]
