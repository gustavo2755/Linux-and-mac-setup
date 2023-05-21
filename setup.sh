#!/bin/bash
echo "Escolha a opção desejada:"
echo "1. Linux"
echo "2. macOS"
read -p "Digite sua escolha (1 ou 2): " opcao
if [ "$opcao" == "1" ]; then
    # Seu script para Linux aqui
    echo "Executando o script para Linux..."
    sudo apt update && sudo apt upgrade -y
    # Instalando PHP e extensões necessárias
    sudo apt install -y php libapache2-mod-php php-mysql php-cli php-curl php-json php-mbstring php-xml php-zip
    # Instalando ferramentas adicionais
    sudo apt install -y curl php-cli php-mbstring git unzip
    # Instalando o Composer
    curl -sS https://getcomposer.org/installer -o composer-setup.php
    sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
    rm composer-setup.php
    # Instalando o Docker
    curl -fsSL https://get.docker.com -o get-docker.sh
    sudo sh get-docker.sh
    rm get-docker.sh
    sudo usermod -aG docker $USER
    # Instalando o Docker Compose
    sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    # Instalando o Node Version Manager (NVM)
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
    # Recarregando .bashrc para utilizar o NVM
    source ~/.bashrc
    # Instalando o Node.js
    nvm install node
    # Instalando o Discord
    sudo snap install discord
    # Configurando o repositório do AnyDesk
    wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -
    echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list
    sudo apt update
    # Instalando o AnyDesk
    sudo apt install -y anydesk
    # Instalando o Visual Studio Code
    sudo snap install --classic code
    # Instalando o Android Studio
    sudo snap install --classic android-studio
    # Instalando o Git
    sudo apt install -y git
    # Instalando o JDK
    sudo apt install -y openjdk-11-jdk
    # Configurando as variáveis de ambiente JAVA_HOME e PATH
    echo "export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64" >> ~/.bashrc
    echo "export PATH=$PATH:$JAVA_HOME/bin" >> ~/.bashrc
    source ~/.bashrc
    # Instalando o React Native CLI
    npm install -g react-native-cli
    # Instalando o Insomnia
    sudo snap install insomnia
elif [ "$opcao" == "2" ]; then
    # Seu script para macOS aqui
    echo "Executando o script para macOS..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    brew install wget
    # Atualizando o Homebrew
    brew update
    # Instalando PHP
    brew install php
    # Instalando ferramentas adicionais
    brew install curl git unzip
    # Instalando o Composer
    curl -sS https://getcomposer.org/installer -o composer-setup.php
    php composer-setup.php --install-dir=/usr/local/bin --filename=composer
    rm composer-setup.php
    # Instalando o Docker
    brew install --cask docker
    # Instalando o Node Version Manager (NVM)
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
    # Recarregando .bash_profile para utilizar o NVM
    source ~/.bash_profile
    # Instalando o Node.js
    brew install nvm
    brew install node
    # Instalando o Discord
    brew install --cask discord
    # Instalando o AnyDesk
    brew install --cask anydesk
    # Instalando o Visual Studio Code
    brew install --cask visual-studio-code
    # Instalando o Android Studio
    brew install --cask android-studio
    # Configurando as variáveis de ambiente JAVA_HOME e PATH
    echo "export JAVA_HOME=$(/usr/libexec/java_home)" >> ~/.bash_profile
    echo "export PATH=$PATH:$JAVA_HOME/bin" >> ~/.bash_profile
    source ~/.bash_profile
    # Instalando o React Native CLI
    npm install -g react-native-cli
    # Instalando o Insomnia
    brew install --cask insomnia
    # instalando pod
    brew install cocoapods
else
    echo "Opção inválida. Por favor, escolha 1 ou 2."
fi
