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

Após clonar o repositório, rodar o script .sh:

```bash
./run-lojatech.sh
```

O script irá extrair o arquivo comprimido **lojatech-image.tar.gz** e inicializar o projeto.
Caso o script falhe, é possível inicializar manualmente com os comandos:

```bash
gunzip lojatech-image.tar.gz
podman load -i lojatech-image.tar
podman run -d --name lojatech-app -p 8080:3000 lojatech:latest
```
Para encerrar a execução do container, execute o script de encerramento:

```bash
./stop-lojatech.sh
```
### Windows

Navegar pelo terminal bash para a pasta do projeto, depois fazer a descompressão da imagem:

```bash
gunzip lojatech-image.tar.gz
podman load -i lojatech-image.tar
podman run -d --name lojatech-app -p 8080:3000 lojatech:latest
```




