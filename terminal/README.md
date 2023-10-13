Requisitos:
    Chocolatey


Windows Terminal:
    Instalação:
        Windows Terminal (Microsoft Store)
        Powershell 7 (Microsoft Store)

    Personalização:
        NerdFont
            https://www.nerdfonts.com/font-downloads
        Opacidade 80% 
        Fundo acrilico
        Material Acrilico na guia
        Themes:
            https://windowsterminalthemes.dev/
            Configurações -> Abrir arquivo JSON -> Mudar Esquema de cores 

    Configuração:
        Criar um PshProfile
            New-Item -Path $PROFILE -Type File -Force
        Adicionar refreshenv
            notepad $PROFILE
            Import-Module $env:ChocolateyInstall\helpers\chocolateyProfile.psm1
Starship:
    Instalação e Setup:
        choco install starship
        Inicializar starship ao abrir terminal:
            notepad $PROFILE
            Invoke-Expression (&starship init powershell)

Terminal-Icons:
    Instalação:
        Install-Module -Name Terminal-Icons -Repository PSGallery

    Configuração:
        noteapd $PROFILE
        Import-Module -Name Terminal-Icons
