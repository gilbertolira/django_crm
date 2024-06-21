Instalação e Configuração do Jenkins

- Para instalar o Jenkins, siga as instruções no link oficial:

    https://www.jenkins.io/doc/book/installing/linux/

- Iniciar e habilitar o Jenkins 

    sudo systemctl enable jenkins

    sudo systemctl start jenkins

- Dar permissão para o usuário Jenkins utilizar o Docker:

    sudo usermod -aG docker jenkins

    sudo systemctl restart Jenkins

- Iniciar configurações:

   -  Obter o password inicial:

        sudo cat /var/lib/jenkins/secrets/initialAdminPassword

   - Acessar o Jenkins e colar o password em:

        http://localhost:8080/

   - Click em "Install suggested plugins"

   - Configure o primeiro acesso do usuário.


  --------Plugins Necessários------

        - Docker Pipeline

        - Kubernetes


  -------Credenciais Necessárias -----

        - GitHub

        - DockerHub

        - KubeConfig