# MacOS Setup Magic

![](https://66.media.tumblr.com/f90b9b50afe82b23c3185b90024958a6/tumblr_o4lyno0TPB1v8us28o1_400.gif)

Script para instalação de várias aplicações no seu MacOS. Para rodar, entre no seu terminal, vá à pasta do projeto e rode o arquivo `install-everything.sh`

## O que é instalado?

### 1. Homebrew
Homebrew é um package manager para MacOS. Com ele, instalamos vários frameworks e aplicações:

###### DEPENDENCIES (Formulae):
* Git, GCC, OpenSSL, PKG-Config

###### DATABASES (Formulae):
* MongoDB, MySQL, SQLLite

###### DEVELOPMENT (Formulae):
* Angular, Elixir, Node, NPM, RBEnv, Python

###### ENVIRONMENT (Formulae):
* Firebase, Heroku

###### COOL STUFF (Formulae):
* MAS-CLI, Shpotify, Tree

###### DEVELOPMENT TOOLS (Casks):  
* **[ChromeDriver](https://sites.google.com/a/chromium.org/chromedriver/home):** WebDriver for Chrome  
* **[iTerm 2](https://www.iterm2.com/):** Terminal interface for Mac  
* **[Dash](https://kapeli.com/dash):** A collection of API documentation (works offline)  
* **[Postman](https://www.getpostman.com/):** API development tool: test, create documentation, share  
* **[Insomnia](https://insomnia.rest/):** Postman alternative (I like it better, tho)  
* **[Royal TSX](https://www.royalapps.com/ts/mac/):** Connection management tool  
* **[MySQL Workbench](https://www.mysql.com/products/workbench/):** MySQL databases management  
* **[Azure Data Studio](https://docs.microsoft.com/en-us/sql/azure-data-studio/):** SQL Server databases management  
* **[Robo 3T](https://robomongo.org):** MongoDB databases management  
* **[Pusher](https://github.com/noodlewerk/NWPusher):** Push Notifications via app  
* **[Sourcetree](https://www.sourcetreeapp.com/):** Git graphical interface    
* **[Sublime Text](https://www.sublimetext.com/3):** Text editor & IDE (better than Atom, sue me)  
* **[Visual Studio Code](https://code.visualstudio.com/):** .NET Core IDE (also supports other languages)  
  
###### VIRTUALIZATION TOOLS (Casks):  
* **[Captain](https://getcaptain.co/):** Docker manager (manage containers easily)  
* **[Docker](https://www.docker.com/community-edition):** VM container management tool  
  
###### NETWORK MANAGEMENT TOOLS (Casks):  
* **[Charles](https://www.charlesproxy.com/):** Network management (review connections, packages, etc)  
* **[Cyberduck](https://cyberduck.io/):** FTP connection tool (and it's also a cute rubber duck)  
* **[Little Snitch](https://www.obdev.at/products/littlesnitch/index.html):** Network management (control connections, packages, etc)  
  
###### UTILITIES (Casks):  
* **[Dozer](https://dozermac.com/):** Hide menu bar items!  
* **[Spectacle](https://dozermac.com/):** Window management tool (w/ shortcuts)
* **[The Unarchiver](https://theunarchiver.com/):** Unarchive everything! (.rar, .7zip, etc)  
* **[Daisy Disk](https://daisydiskapp.com/):** File storage manager (helps you clean up the mess)  
* **[Google Chrome](https://www.google.com/chrome/):** Alternative browser (Safari is better and lighter, tho)  
* **[Mozilla Firefox](https://www.mozilla.org/firefox/):** Alternative browser (Chrome is better, tho)  
* **[Mozilla Firefox (for Developers)](https://www.mozilla.org/en-US/firefox/developer/):** Firefox browser w/ more development tools  
* **[Skype](https://skype.com):** Text & voice messaging (used mostly for remote interviews)  
* **[Slack](https://slack.com/):** Best team communication tool ever!  
* **[MacDown](https://macdown.uranusjr.com/):** Markdown editor    
* **[XMind Zen](https://www.xmind.net/zen/):** Flowchart design tool -- organize your ideas!
* **[Microsoft Office](https://products.office.com/mac/microsoft-office-for-mac/):** ...office package!  
* **[Microsoft Teams](https://teams.microsoft.com/downloads):** Microsoft's Slack (but worse)
  
###### DESIGN TOOLS (Casks):  
* **[ImageOptim](https://imageoptim.com/mac):** Image optimization software  
* **[Adobe Creative Cloud](https://www.adobe.com/creativecloud.html):** Adobe apps manager  
* **[Sketch](https://www.sketchapp.com/):** UI/UX design tool    
* **[Zeplin](https://zeplin.io/):** Pixel-perfect design!  
  
###### ENTERTAINMENT (Casks):  
* **[Spotify](https://www.spotify.com/):** Best music streaming software  
* **[Boom 3D](https://www.globaldelight.com/boom3d):** System-wide equalizer  
* **[Cave Story](https://www.cavestory.org/):** GOTY!!11    

### 2. Node

###### PACOTES GLOBAIS
Pacotes globais do Node habilitam novas utilizações no terminal, como `gulp`, `create-react-app`, etc.

* [create-next-app](https://open.segment.com/create-next-app/)
* [create-react-app](https://github.com/facebook/create-react-app)
* [gulp-cli](https://gulpjs.com)
* [tldr](https://tldr.sh)
* [yarn](https://yarnpkg.com)

### 3. Ruby

###### PACOTES
Para melhor utilização do Ruby, **RBEnv** e **Bundler** são instalados. Além disso, o RVM é configurado para rodar com o `ruby-head`.

* **[CocoaPods](https://cocoapods.org/):** Package Manager for iOS  
* **[Fastlane](https://fastlane.tools/):** Automation for iOS & Android Apps  

### 4. Customizações

###### SUBLIME (bin)
O Sublime não é instalado com a configuração do bin, então esse passo configura para `sublime` o comando no terminal.

`sublime blablabla.txt` abre o arquivo no Sublime, por exemplo.

###### YADR - Yet Another Dotfile Repo
YADR é uma coleção de extensões para git, vim, etc etc. Melhor **muito** a utilização do terminal.

Para mais informações, acesse o [repositório](https://github.com/skwp/dotfiles) do projeto.

## Opa, peraí!

### Mas e se eu não quiser instalar tudo?
O script foi criado em partes, então é só comentar o que não quiser, que _provavelmente_ não vai afetar nada (a menos que exista alguma dependência).

### E se eu quiser colocar algo a mais?
Você pode colocar nos scripts e commitar aqui, a idéia é ser um setup colaborativo!

### Consigo rodar só algumas partes?
Existem alguns .sh no projeto para cada parte (Homebrew Casks, Homebrew Formulae, RVM, NPM, etc). Todos estão com permissão de execução, é só rodar a parte que precisar!

### ⚠ Ocorreu um problema com o software já instalado
Se o software que o homebrew está tentando instalar já estiver instalado sem ser pelo homebrew, ele não vai instalar em cima e vai parar a instalação ali mesmo. Por ora, vá até o `brewfile` e retire a linha do app que deu erro.
