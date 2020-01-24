# MacOS Setup Magic

![](https://66.media.tumblr.com/f90b9b50afe82b23c3185b90024958a6/tumblr_o4lyno0TPB1v8us28o1_400.gif)

Script para instalação de várias aplicações no seu MacOS. Para rodar, entre no seu terminal, vá à pasta do projeto e rode o arquivo `install-everything.sh`

## O que é instalado?

### :: Homebrew
Homebrew é um package manager para MacOS. Com ele, instalamos vários frameworks e aplicações:

###### DEPENDENCIES (Formulae):
* Git
* OpenSSL
* PKG-Config

###### DATABASES (Formulae):
* MongoDB
* MySQL
* SQLLite

###### DEVELOPMENT (Formulae):
* Angular
* Elixir
* Node
* NPM
* Python

###### ENVIRONMENT (Formulae):
* Firebase
* Heroku

###### COOL STUFF (Formulae):
* Shpotify (Spotify CLI!)
* Tree (CLI-based filetree)

###### DEVELOPMENT TOOLS (Casks):  
* **[ChromeDriver](https://sites.google.com/a/chromium.org/chromedriver/home):** WebDriver for Chrome (dependency)  
* **[Dash](https://kapeli.com/dash):** API Docs Collection
* **[Insomnia](https://insomnia.rest/):** API Development Tool (alternative to Postman)  
* **[Royal TSX](https://www.royalapps.com/ts/mac/):** Connection management tool  
* **[iTerm 2](https://www.iterm2.com/):** Terminal Interface for Mac  
* **[MySQL Workbench](https://www.mysql.com/products/workbench/):** MySQL Management Tool  
* **[Azure Data Studio](https://docs.microsoft.com/en-us/sql/azure-data-studio/):** SQL Server Management Tool  
* **[Robo 3T](https://robomongo.org):** MongoDB Management Tool
* **[Postman](https://www.getpostman.com/):** API Development Tool  
* **[Pusher](https://github.com/noodlewerk/NWPusher):** Push Notifications via App
* **[Sourcetree](https://www.sourcetreeapp.com/):** Git Graphic Interface
* **[Sublime Text](https://www.sublimetext.com/3):** Text Editor & IDE (better than Atom, sue me)  
* **[Visual Studio Code](https://code.visualstudio.com/):** .NET Core IDE (also supports other languages)  
  
###### VIRTUALIZATION TOOLS (Casks):  
* **[Captain](https://getcaptain.co/):** Docker Manager (manage containers easily)  
* **[Docker](https://www.docker.com/community-edition):** VM Container Management Tool  
  
###### NETWORK MANAGEMENT TOOLS (Casks):  
* **[Charles](https://www.charlesproxy.com/):** Network Management Tool (review connections, packages, etc)  
* **[Cyberduck](https://cyberduck.io/):** FTP Connection Tool (and it's also a cute rubber duck)  
* **[Little Snitch](https://www.obdev.at/products/littlesnitch/index.html):** Network Management Tool (control connections, packages, etc)  
  
###### UTILITIES (Casks):  
* **[Google Chrome](https://www.google.com/chrome/):** Alternative Browser (Safari is better, tho)  
* **[MacDown](https://macdown.uranusjr.com/):** Markdown Editor  
* **[Microsoft Office](https://products.office.com/mac/microsoft-office-for-mac/):** ...office  
* **[Microsoft Teams](https://teams.microsoft.com/downloads):** Microsoft's Slack (but worse)  
* **[Mozilla Firefox](https://www.mozilla.org/firefox/):** Alternative Browser (Safari is better, tho)  
* **[Skype](https://skype.com):** Text & Voice Messaging  
* **[Slack](https://slack.com/):** Best Team Communication Tool ever!  
* **[The Unarchiver](https://theunarchiver.com/):** Unarchive everything! (.rar, .7zip, etc)  
* **[Dozer](https://dozermac.com/):** Hide menu bar items!  
* **[Spectacle](https://dozermac.com/):** Window management tool (w/ shortcuts)
  
###### DESIGN TOOLS (Casks):  
* **[ImageOptim](https://imageoptim.com/mac):** Image Optimization
* **[Adobe Creative Cloud](https://www.adobe.com/creativecloud.html):** Adobe Apps Manager  
* **[Sketch](https://www.sketchapp.com/):** UI/UX Design Tool  
* **[XMind Zen](https://www.xmind.net/zen/):** Flowchart Design Tool  
* **[Zeplin](https://zeplin.io/):** Pixel-perfect design!  
  
###### ENTERTAINMENT (Casks):  
* **[Boom 3D](https://www.globaldelight.com/boom3d):** System-wide equalizer  
* **[Cave Story](https://www.cavestory.org/):** GOTY!!11  
* **[Spotify](https://www.spotify.com/):** Music Streaming Tool

### :: Customizações

###### SUBLIME (bin)
O Sublime não é instalado com a configuração do bin, então esse passo configura para `sublime` o comando no terminal.

`sublime blablabla.txt` abre o arquivo no Sublime, por exemplo.

###### YADR - Yet Another Dotfile Repo
YADR é uma coleção de extensões para git, vim, etc etc. Melhor **muito** a utilização do terminal.

Para mais informações, acesse o [repositório](https://github.com/skwp/dotfiles) do projeto.

### :: Ruby

###### PACOTES
Para melhor utilização do Ruby, **RVM** e **Bundler** são instalados. Além disso, o RVM é configurado para rodar com o `ruby-head`.

* **[CocoaPods](https://cocoapods.org/):** Package Manager for iOS  
* **[Fastlane](https://fastlane.tools/):** Automation for iOS & Android Apps  

### :: Node

###### PACOTES GLOBAIS
Pacotes globais do Node habilitam novas utilizações no terminal, como `gulp`, `create-react-app`, etc.

* [create-next-app](https://open.segment.com/create-next-app/)
* [create-react-app](https://github.com/facebook/create-react-app)
* [gulp-cli](https://gulpjs.com)
* [tldr](https://tldr.sh)
* [yarn](https://yarnpkg.com)

## Opa, peraí!

### Mas e se eu não quiser instalar tudo?
O script foi criado em partes, então é só comentar o que não quiser, que _provavelmente_ não vai afetar nada (a menos que exista alguma dependência).

### E se eu quiser colocar algo a mais?
Você pode colocar nos scripts e commitar aqui, a idéia é ser um setup colaborativo!

### Consigo rodar só algumas partes?
Existem alguns .sh no projeto para cada parte (Homebrew Casks, Homebrew Formulae, RVM, NPM, etc). Todos estão com permissão de execução, é só rodar a parte que precisar!

### ⚠ Ocorreu um problema com o software já instalado
Se o software que o homebrew está tentando instalar já estiver instalado sem ser pelo homebrew, ele não vai instalar em cima e vai parar a instalação ali mesmo. Por ora, vá até o `brewfile` e retire a linha do app que deu erro.
