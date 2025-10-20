FROM mcr.microsoft.com/dotnet/framework/aspnet:4.8-windowsservercore-ltsc2022

EXPOSE 19595

SHELL ["powershell", "-Command", "$ErrorActionPreference = 'Stop';"]

COPY . 'C:\\inetpub\\wwwroot'

COPY ./docker/Start.ps1 'C:\\Start.ps1'

WORKDIR /inetpub/wwwroot

ENTRYPOINT ["powershell.exe", "-ExecutionPolicy", "Bypass", "C:\\Start.ps1"]
