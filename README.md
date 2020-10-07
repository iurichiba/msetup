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
- [x] **[ChromeDriver](https://sites.google.com/a/chromium.org/chromedriver/home)**  
- [x] **[iTerm 2](https://www.iterm2.com/)**  
- [x] **[Pusher](https://github.com/noodlewerk/NWPusher)**  
- [x] **[Postman](https://www.getpostman.com/)**  
- [x] **[Insomnia](https://insomnia.rest/)**  
- [x] **[Robo 3T](https://robomongo.org)**  
- [x] **[MySQL Workbench](https://www.mysql.com/products/workbench/)**  
- [x] **[Sublime Text](https://www.sublimetext.com/3)**  
- [x] **[Visual Studio Code](https://code.visualstudio.com/)**  
- [x] **[Android Studio](https://developer.android.com/studio/index.html)** 
- [x] **[React Native Debugger](https://github.com/jhen0409/react-native-debugger)**  
  
##### 1.2.2. VIRTUALIZATION TOOLS (Casks):  
- [x] **[Docker](https://www.docker.com/community-edition)**  
- [x] **[Captain](https://getcaptain.co/)**  
  
##### 1.2.3. NETWORK MANAGEMENT TOOLS (Casks):  
- [x] **[Charles](https://www.charlesproxy.com/)**  
- [x] **[Cyberduck](https://cyberduck.io/)**  
- [x] **[Royal TSX](https://www.royalapps.com/ts/mac/)**  
  
##### 1.2.4. UTILITIES (Casks):  
- [x] **[Dozer](https://dozermac.com/)**  
- [x] **[Spectacle](https://dozermac.com/)** 
- [x] **[The Unarchiver](https://theunarchiver.com/)**  
- [x] **[HandBrake](https://handbrake.fr/)**  
- [x] **[Daisy Disk](https://daisydiskapp.com/)**  
- [x] **[CleanMyMac X](https://macpaw.com/cleanmymac)**  
- [x] **[Google Chrome](https://www.google.com/chrome/)**  
- [x] **[Mozilla Firefox](https://www.mozilla.org/firefox/)**  
- [x] **[Slack](https://slack.com/)**  
- [x] **[WhatsApp](https://www.whatsapp.com/)** 
- [x] **[MacDown](https://macdown.uranusjr.com/)**  
- [x] **[Typora](https://typora.io)** 
- [x] **[XMind Zen](https://www.xmind.net/zen/)**  
- [x] **[Miro](https://miro.com/)** 
- [x] **[Notion](https://www.notion.so/)** 
- [x] **[Microsoft Office](https://products.office.com/mac/microsoft-office-for-mac/)**  
  
##### 1.2.5. DESIGN TOOLS (Casks):  
- [x] **[Adobe Creative Cloud](https://www.adobe.com/creativecloud.html)**  
- [x] **[ImageOptim](https://imageoptim.com/mac)**  
- [x] **[Sketch](https://www.sketchapp.com/)**  
- [x] **[Figma](https://www.figma.com/)**  
- [x] **[Zeplin](https://zeplin.io/)**  
- [x] **[IconJar](https://geticonjar.com/)**  
  
##### 1.2.6. ENTERTAINMENT (Casks):  
- [x] **[Spotify](https://www.spotify.com/)**  
- [x] **[Boom 3D](https://www.globaldelight.com/boom3d)**  
- [x] **[OpenEmu](https://openemu.org/)** 
- [x] **[Cave Story](https://www.cavestory.org/)**  


### 2. Mac App Store
Aplicativos somente encontrados na App Store. Para instalar, o script utiliza a extensão `MAS` e o `Homebrew` para instalação via brewfile.

#### 2.1. APLICATIVOS
- [x] **[Xcode](https://developer.apple.com/xcode/)** 
- [x] **[Swift Playgrounds](https://www.apple.com/swift/playgrounds/)**  
- [x] **[Keynote](https://www.apple.com/keynote/)** 
- [x] **[Pages](https://www.apple.com/pages/)** 
- [x] **[Bear](https://bear.app)** 
- [x] **[Gif Brewery 3](https://gfycat.com/gifbrewery)** 


### 3. Ruby
Para melhor utilização do Ruby, **RBEnv** e **Bundler** são instalados.  
Caso a ruby selecionada seja a do sistema, uma nova versão (default 2.6.0) é instalada **para o usuário**.

##### 3.1. GEMS
- [x] **[CocoaPods](https://cocoapods.org/)**  
- [x] **[Fastlane](https://fastlane.tools/)**  


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
