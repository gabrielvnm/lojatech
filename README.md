# LojaTech

Matéria de extensão - Programação Web da Universidade Católica de Brasília, 2026
Repositório contendo a imagem do container para inicializar o projeto.

## Inicialização
Passos para inicialização do projeto:

```bash
git clone https://github.com/gabrielvnm/lojatech.git
```

O projeto pode ser inicializado pelo container no arquivo comprimido **lojatech-image.tar**. Neste repositório, o arquivo foi dividido em partes menores para possibilitar o upload para o Git, sendo necessário a junção dos mesmo antes de executar o projeto. O código fonte pode ser verificado no repositório **[PROGWEB](https://github.com/gabrielvnm/progweb-UCB/tree/prod)**.

É necessário a instalação do Podman ou Docker previamente para executar o projeto. É recomendado o uso de sistema Unix, mas a execução é possivel em sistemas Windows. No caso do Windows, é recomendado a utilização do Podman CLI ou Docker CLI, ou a inicialização do Docker/Podman Desktop antes de executar o container.

### Unix

- Após clonar o repositório, navegar até a pasta /container e unir os splits:

```bash
cat lojatech-part-* > lojatech-image.tar
ls
```
- Verificar se o arquivo lojatech-image.tar foi criado. Em caso positivo, continuar para a criação do container:

```bash
podman load -i lojatech-image.tar
podman run -d --name lojatech-app -p 8080:3000 localhost/lojatech:latest
```

O backend será inicializado na porta 3000, e o frontend na porta 8080. O projeto pode ser acessado através de http://localhost:8080

### Windows

- Inicializar o Docker Desktop ou Podman Desktop.

- Navegar pelo terminal CMD para a pasta do projeto, depois fazer a descompressão da imagem:

```cmd
copy /b lojatech-part-* lojatech-image.tar
docker load -i lojatech-image.tar
docker run -d --name lojatech-app -p 8080:3000 localhost/lojatech:latest
```

O backend será inicializado na porta 3000, e o frontend na porta 8080. O projeto pode ser acessado através de http://localhost:8080




