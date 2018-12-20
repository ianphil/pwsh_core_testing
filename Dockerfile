FROM mcr.microsoft.com/powershell:6.1.0-fedora-28
RUN pwsh -c "Install-Module -Name Az -Force"
CMD [ "pwsh" ]