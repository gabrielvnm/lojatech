# LojaTech

Matéria de extensão - Programação Web da Universidade Católica de Brasília, 2026
Repositório contendo a imagem do container para inicializar o projeto.

## Inicialização
Passos para inicialização do projeto:

```bash
git clone https://github.com/gabrielvnm/lojatech
```

O projeto pode ser inicializado pelo container no arquivo comprimido **lojatech-image.tar.gz**. O código fonte pode ser verificado no repositório **[URLREPO](https://github.com/gabrielvnm/progweb-UCB)**.

É necessário a instalação do Podman ou Docker previamente para executar o projeto. É recomendado o uso de sistema Unix, mas a execução do script é possivel por um terminal **git bash** em sistemas Windows. No caso do Windows, é recomendado a utilização do Podman CLI ou Docker CLI.

### Unix

Após clonar o repositório, navegar até a pasta container e unir os splits:

```bash
cat lojatech-part-* > lojatech-image.tar
ls
```
Verificar se o arquico lojatech-image.tar foi criado. Em caso positivo, continuar para a criação do container:

```bash
podman load -i lojatech-image.tar
podman run -d --name lojatech-app -p 8080:3000 lojatech:latest
```

### Windows

Navegar pelo terminal bash para a pasta do projeto, depois fazer a descompressão da imagem:

```cmd
copy /b lojatech-part-* lojatech-image.tar
docker load -i lojatech-image.tar
docker run -d --name lojatech-app -p 8080:3000 lojatech:latest
```




