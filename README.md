![](https://66.media.tumblr.com/f90b9b50afe82b23c3185b90024958a6/tumblr_o4lyno0TPB1v8us28o1_400.gif)  
_Dumbledore's Seal of Approval_

# .msetup

Script para instalação de várias aplicações no seu MacOS. Para rodar, clone o projeto, entre no seu terminal, vá à pasta do projeto e rode o arquivo `install.sh`. Caso queira instalar só algum dos passos, utilize os scripts dentro das pastas `scripts/**` e/ou comente/remova as linhas do script `install.sh` na root do projeto.

Outra opção é instalar rodando este comando:
```shell
sh -c "`curl -fsSL https://raw.githubusercontent.com/iurichiba/msetup/master/remote-installation.sh `"
```

Esse comando clonará o repositório para `$HOME/.msetup` e rodará à partir de lá. Se esse diretório já existir, o comando dará um `git pull` para a última revisão e rodará o script como normal.

<br/>

## O que é instalado?

### 1. Homebrew
Homebrew é um package manager para MacOS. Com ele, instalamos vários frameworks e aplicações:

##### 1.1.1. DEPENDENCIES (Formulae):
- [x] GCC, OpenSSL, PKG-Config

##### 1.1.2. DEVELOPMENT (Formulae):
- [x] Angular, Elixir, Python, Node, NPM, NVM, RBEnv, HTTPie

##### 1.1.3. ENVIRONMENT (Formulae):
- [x] Firebase

##### 1.1.4. COOL STUFF (Formulae):
- [x] Shpotify, Nyancat, Tree, MAS-CLI

##### 1.2.1. DEVELOPMENT TOOLS (Casks):  
- [x] **[ChromeDriver](https://sites.google.com/a/chromium.org/chromedriver/home):** WebDriver for Chrome  
- [x] **[iTerm 2](https://www.iterm2.com/):** Terminal interface for Mac  
- [x] **[Pusher](https://github.com/noodlewerk/NWPusher):** Push Notifications via app  
- [x] **[Postman](https://www.getpostman.com/):** API development tool: test, create documentation, share  
- [x] **[Insomnia](https://insomnia.rest/):** Postman alternative (simple and better for some uses)  
- [x] **[Robo 3T](https://robomongo.org):** MongoDB databases manager  
- [x] **[MySQL Workbench](https://www.mysql.com/products/workbench/):** MySQL databases manager  
- [x] **[Sublime Text](https://www.sublimetext.com/3):** Text editor & IDE (better than Atom, sue me)  
- [x] **[Visual Studio Code](https://code.visualstudio.com/):** .NET Core IDE (also supports other languages)  
- [x] **[Android Studio](https://developer.android.com/studio/index.html):** Android IDE  
  
##### 1.2.2. VIRTUALIZATION TOOLS (Casks):  
- [x] **[Captain](https://getcaptain.co/):** Docker manager (manage containers easily)  
- [x] **[Docker](https://www.docker.com/community-edition):** VM container manager  
  
##### 1.2.3. NETWORK MANAGEMENT TOOLS (Casks):  
- [x] **[Charles](https://www.charlesproxy.com/):** Debugging web proxy
- [x] **[Cyberduck](https://cyberduck.io/):** FTP connection tool (and it's also a cute rubber duck)  
- [x] **[Royal TSX](https://www.royalapps.com/ts/mac/):** Connection manager  
  
##### 1.2.4. UTILITIES (Casks):  
- [x] **[Dozer](https://dozermac.com/):** Hide menu bar items!  
- [x] **[Spectacle](https://dozermac.com/):** Window manager (w/ shortcuts)
- [x] **[The Unarchiver](https://theunarchiver.com/):** Unarchive everything! (.rar, .7zip, etc)  
- [x] **[HandBrake](https://handbrake.fr/):** Video transcoder (transform any video to .mp4, etc)  
- [x] **[Daisy Disk](https://daisydiskapp.com/):** File storage manager (helps you clean up the mess)  
- [x] **[Google Chrome](https://www.google.com/chrome/):** Alternative browser (Safari is better and lighter, tho)  
- [x] **[Mozilla Firefox](https://www.mozilla.org/firefox/):** Alternative browser (Chrome is better, tho)  
- [x] **[Slack](https://slack.com/):** Best team communication tool ever!  
- [x] **[WhatsApp](https://www.whatsapp.com/):** Mac interface for WhatsApp
- [x] **[MacDown](https://macdown.uranusjr.com/):** Text editor with full Markdown support  
- [x] **[Typora](https://typora.io):** Markdown text editor w/ customizable [themes](https://theme.typora.io) 
- [x] **[XMind Zen](https://www.xmind.net/zen/):** Flowchart design tool -- organize your ideas!  
- [x] **[Miro](https://miro.com/):** Collaborative whiteboard tool
- [x] **[Notion](https://www.notion.so/):** Shareable notes for planning, note-taking, etc.
- [x] **[Microsoft Office](https://products.office.com/mac/microsoft-office-for-mac/):** ...office package!  
  
##### 1.2.5. DESIGN TOOLS (Casks):  
- [x] **[Adobe Creative Cloud](https://www.adobe.com/creativecloud.html):** Adobe apps manager  
- [x] **[ImageOptim](https://imageoptim.com/mac):** Image optimization software  
- [x] **[Sketch](https://www.sketchapp.com/):** Interface design tool (paid but great)  
- [x] **[Figma](https://www.figma.com/):** Alternative to Sketch. Full of add-ons!  
- [x] **[Zeplin](https://zeplin.io/):** Pixel-perfect design!  
  
##### 1.2.6. ENTERTAINMENT (Casks):  
- [x] **[Spotify](https://www.spotify.com/):** Best music streaming software  
- [x] **[Boom 3D](https://www.globaldelight.com/boom3d):** System-wide equalizer (paid, but worth it)  
- [x] **[OpenEmu](https://openemu.org/):** Universal emulator for multiple consoles
- [x] **[Cave Story](https://www.cavestory.org/):** GOTY!!11    


### 2. Mac App Store
Aplicativos somente encontrados na App Store. Para instalar, o script utiliza a extensão `MAS` e o `Homebrew` para instalação via brewfile.

#### 2.1. APLICATIVOS
- [x] **[Xcode](https://developer.apple.com/xcode/):** Apple's IDE (iOS, iPadOS, MacOS, etc)
- [x] **[Swift Playgrounds](https://www.apple.com/swift/playgrounds/):** Fun exercises to help you learn Swift!  
- [x] **[Keynote](https://www.apple.com/keynote/):** Apple's PowerPoint (but **way** better!)
- [x] **[Pages](https://www.apple.com/pages/):** Apple's Word
- [x] **[Bear](https://bear.app):** Note-taking app, compatible with Markdown
- [x] **[Gif Brewery 3](https://gfycat.com/gifbrewery):** Gif-making software


### 3. Ruby
Para melhor utilização do Ruby, **RBEnv** e **Bundler** são instalados.  
Caso a ruby selecionada seja a do sistema, uma nova versão (default 2.6.0) é instalada **para o usuário**.

##### 3.1. GEMS
- [x] **[CocoaPods](https://cocoapods.org/):** Package Manager for iOS  
- [x] **[Fastlane](https://fastlane.tools/):** Automation for iOS & Android Apps  


### 4. NodeJS
Alguns pacotes do Node habilitam novas utilizações no terminal, como `gulp`, `create-react-app`, etc.

##### 4.1. PACOTES
- [x] [create-react-app](https://github.com/facebook/create-react-app)
- [x] [expo-cli](https://github.com/expo/expo-cli)
- [x] [gulp-cli](https://gulpjs.com)
- [x] [tldr](https://tldr.sh)
- [x] [yarn](https://yarnpkg.com)


### 5. Customizações

#### 5.1.1. SUBLIME (bin)
O Sublime não é instalado com a configuração do bin, então esse passo configura para `sublime` o comando no terminal.

`sublime blablabla.txt` abre o arquivo no Sublime, por exemplo.

##### 5.2.1. YADR - Yet Another Dotfile Repo
YADR é uma coleção de extensões para o terminal, git, vim, etc.  
Melhora e **muito** a produtividade via terminal.

Para mais informações, acesse o [repositório](https://github.com/skwp/dotfiles) do projeto.

<br/>

## Troubleshooting

### Mas e se eu não quiser instalar tudo?
O script foi criado em partes, então é só comentar o que não quiser, que _provavelmente_ não vai afetar nada (a menos que exista alguma dependência).

### E se eu quiser colocar algo a mais?
Você pode colocar nos scripts e commitar aqui ou criar um pull request, a idéia é ser um setup colaborativo!

### Consigo rodar só algumas partes?
Existem alguns .sh no projeto para cada parte (Homebrew, Ruby, Node, etc). Todos estão com permissão de execução, é só rodar a parte que precisar!

### Ocorreu um problema com o software já instalado
Se o software que o homebrew está tentando instalar já estiver instalado sem ser pelo homebrew, ele não vai instalar em cima e vai parar a instalação ali mesmo. Por ora, vá até o `brewfile` e retire a linha do app que deu erro.
