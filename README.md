![](https://66.media.tumblr.com/f90b9b50afe82b23c3185b90024958a6/tumblr_o4lyno0TPB1v8us28o1_400.gif)  
_Dumbledore's Seal of Approval_

# .msetup

Script para instalação de várias aplicações no seu MacOS. Para rodar, clone o projeto, entre no seu terminal, vá à pasta do projeto e rode o arquivo `install.sh`. Caso queira instalar só algum dos passos, utilize os scripts dentro das pastas `scripts/**` e/ou comente/remova as linhas do script `install.sh` na root do projeto.

Outra opção é instalar rodando este comando:
```shell
sh -c "`curl -fsSL https://raw.githubusercontent.com/iurichiba/msetup/non-dev/remote-installation.sh `"
```

Esse comando clonará o repositório para `$HOME/.msetup` e rodará à partir de lá. Se esse diretório já existir, o comando dará um `git pull` para a última revisão e rodará o script como normal.

<br/>

## O que é instalado?

### ## 📦 Homebrew 
Homebrew é um package manager para MacOS. Com ele, instalamos vários frameworks e aplicações:

#### 1.1. Formulae:
N/A

#### 1.2. Casks:
  
##### 1.2.1. UTILITIES:  
- [x] [Dozer](https://dozermac.com/)  
- [x] [Spectacle](https://dozermac.com/)  
- [x] [The Unarchiver](https://theunarchiver.com/)  
- [x] [Google Chrome](https://www.google.com/chrome/)  
- [x] [Daisy Disk](https://daisydiskapp.com/)  
- [x] [WhatsApp](https://www.whatsapp.com/)   
- [x] [Folx](https://mac.eltima.com/download-manager.html)  
- [x] [VLC](https://www.videolan.org/vlc/)  
  
##### 1.2.2. ENTERTAINMENT:  
- [x] [Spotify](https://www.spotify.com/)  
- [x] [Boom 3D](https://www.globaldelight.com/boom3d)  
- [x] [Plex Media Server](https://www.plex.tv/)   
- [x] [Plex](https://www.plex.tv/)   
- [x] [OpenEmu](https://openemu.org/)   
- [x] [Cave Story](https://www.cavestory.org/)  


### ## 🍎 Mac App Store  
Aplicativos somente encontrados na App Store. Para instalar, o script utiliza a extensão `MAS` e o `Homebrew` para instalação via brewfile.

#### 2.1. APLICATIVOS
- [x] [Gif Brewery 3](https://gfycat.com/gifbrewery)  
- [x] [Unsplash Wallpapers](https://apps.apple.com/us/app/unsplash-wallpapers/id1284863847)  

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
