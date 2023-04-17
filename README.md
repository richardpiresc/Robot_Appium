# Robot_Appium

Projeto criado para realizar teste mobile com Robot Framework e Appium.
Utilizei o conceito de PageObject para organizar meu código facilidando a leitura da scrita por qualquer pessoa.
O arquivo principal para rodar o projeto é o (plant.robot), nesse arquivo estou referenciando as Keywords definidas em cada tela e no arquivo (help.robot) defini as capabilities do appium.
* Comando para executar o teste "robot -d ./logs plant.robot"

**Tecnologias utilizadas**

# Robot Framework
É um framework de automação de testes open-source desenvolvido em Python.

# Appium
Ferramenta open-source utilizada para automação mobile em aplicativos Android ou IOS.

**Para executar o código deve-se**

- Utilizar algum editor de texto de sua preferencia, por exp:(Visual Studio Code, Sublime, ...)
- Instalar o Python
- Instalar o Robot framework
 	pip install robotframework
	pip install robotframework-appiumlibrary
- Instalar o Node.js
- Instalar o Appium desktop
- Instalar o Appium inspector
- Instalar o appium-doctor 
  npm install appium-doctor -g
- Instalar o Android Studio
- No Android Studio (File > Settings > digite no campo de pesquisa "SDK"), agora marque a opção Hide Obsolete Pakages e selecione a SKD obsoleta (Android SDK Tools (Obsolete) para fazer o download) *caso apresente erro no appium-doctor
- Instalar Java JDK 1.8
- Criar as variáveis de ambiente
 - variável: %JAVA_HOME% value:(\Java\jdk1.8.0_341) #colocar o local do arquivo jdk 1.8 
 - variável: %ANDROID_HOME% value:(\Local\Android\Sdk) #colocar o local do skd da instalação do android studio
 - Adicionar à variável PATH os diretórios
  PATH=$PATH:$ANDROID_HOME/platform-tools
  PATH=$PATH:$ANDROID_HOME/tools
  PATH=$PATH:$ANDROID_HOME/tools/bin
  PATH=$PATH:$ANDROID_HOME/tools/lib
  PATH=$PATH:$JAVA_HOME/bin
