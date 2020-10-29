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

### ## 📦 Homebrew 
Homebrew é um package manager para MacOS. Com ele, instalamos vários frameworks e aplicações:

#### 1.1. Formulae:

##### 1.1.1. DEPENDENCIES:
- [x] GCC, OpenSSL, PKG-Config

##### 1.1.2. DEVELOPMENT:
- [x] Angular, Elixir, Python, Node, NPM, NVM, RBEnv, HTTPie

##### 1.1.3. ENVIRONMENT:
- [x] Firebase

##### 1.1.4. COOL STUFF:
- [x] Shpotify, Nyancat, Tree, MAS-CLI


#### 1.2. Casks:

##### 1.2.1. DEVELOPMENT TOOLS:  
- [x] [Dash](https://kapeli.com/dash)  
- [x] [iTerm 2](https://www.iterm2.com/)  
- [x] [Insomnia](https://insomnia.rest/)  
- [x] [MongoDB Compass](https://www.mongodb.com/products/compass)  
- [x] [MySQL Workbench](https://www.mysql.com/products/workbench/)  
- [x] [Sublime Text](https://www.sublimetext.com/3)  
- [x] [Visual Studio Code](https://code.visualstudio.com/)  
- [x] [Android Studio](https://developer.android.com/studio/index.html)  
- [x] [Flipper](https://fbflipper.com/)  
- [x] [Pusher](https://github.com/noodlewerk/NWPusher)  
- [x] [Boop](https://boop.okat.best/)  
  
##### 1.2.2. VIRTUALIZATION TOOLS:  
- [x] [Docker](https://www.docker.com/community-edition)  
- [x] [Captain](https://getcaptain.co/)  
  
##### 1.2.3. NETWORK MANAGEMENT TOOLS:  
- [x] [Proxyman](https://proxyman.io/)  
- [x] [Cyberduck](https://cyberduck.io/)  
- [x] [Royal TSX](https://www.royalapps.com/ts/mac/)  
  
##### 1.2.4. UTILITIES:  
- [x] [Dozer](https://dozermac.com/)  
- [x] [Spectacle](https://dozermac.com/)  
- [x] [The Unarchiver](https://theunarchiver.com/)  
- [x] [Google Chrome](https://www.google.com/chrome/)  
- [x] [HandBrake](https://handbrake.fr/)  
- [x] [Daisy Disk](https://daisydiskapp.com/)  
- [x] [Slack](https://slack.com/)  
- [x] [Notion](https://www.notion.so/)  
- [x] [XMind Zen](https://www.xmind.net/zen/)  
- [x] [WhatsApp](https://www.whatsapp.com/)   
- [x] [Folx](https://mac.eltima.com/download-manager.html)  
- [x] [VLC](https://www.videolan.org/vlc/)  
  
##### 1.2.5. DESIGN TOOLS:  
- [x] [Adobe Creative Cloud](https://www.adobe.com/creativecloud.html)  
- [x] [ImageOptim](https://imageoptim.com/mac)  
- [x] [Figma](https://www.figma.com/)  
- [x] [Zeplin](https://zeplin.io/)  
  
##### 1.2.6. ENTERTAINMENT:  
- [x] [Spotify](https://www.spotify.com/)  
- [x] [Boom 3D](https://www.globaldelight.com/boom3d)  
- [x] [OpenEmu](https://openemu.org/)   
- [x] [Cave Story](https://www.cavestory.org/)  


### ## 🍎 Mac App Store  
Aplicativos somente encontrados na App Store. Para instalar, o script utiliza a extensão `MAS` e o `Homebrew` para instalação via brewfile.

#### 2.1. APLICATIVOS
- [x] [Xcode](https://developer.apple.com/xcode/)  
- [x] [Swift Playgrounds](https://www.apple.com/swift/playgrounds/)  
- [x] [Keynote](https://www.apple.com/keynote/)  
- [x] [Pages](https://www.apple.com/pages/)  
- [x] [Bear](https://bear.app)  
- [x] [Spark](https://sparkmailapp.com)  
- [x] [Gif Brewery 3](https://gfycat.com/gifbrewery)  


### ## ♦️ Ruby  
Para melhor utilização do Ruby, **RBEnv** e **Bundler** são instalados.  
Caso a ruby selecionada seja a do sistema, uma nova versão (default 2.6.0) é instalada **para o usuário**.

##### 3.1. GEMS
- [x] [CocoaPods](https://cocoapods.org/)  
- [x] [Fastlane](https://fastlane.tools/)  


### ## 👩‍💻 NodeJS & React  
Alguns pacotes do Node habilitam novas utilizações no terminal.

##### 4.1. PACOTES
- [x] [expo-cli](https://github.com/expo/expo-cli)
- [x] [gulp-cli](https://gulpjs.com)
- [x] [yarn](https://yarnpkg.com)
- [x] [tldr](https://tldr.sh)


### ## 🤖 Customizações    

#### 5.1. SUBLIME (bin)
O Sublime não é instalado com a configuração do bin, então esse passo configura para `sublime` o comando no terminal.

`sublime blablabla.txt` abre o arquivo no Sublime, por exemplo.

##### 5.2. YADR - Yet Another Dotfile Repo
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
