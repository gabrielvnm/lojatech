# LojaTech

Matéria de extensão - Programação Web da Universidade Católica de Brasília, 2026
Repositório contendo a imagem do container podman para inicializar o projeto.

## Inicialização
Passos para inicialização do projeto:

O projeto pode ser inicializado pelo container no arquivo comprimido **lojatech-image.tar.gz**. O código fonte pode ser verificado no repositório **URLREPO**.

É necessário a instalação do Podman previamente para executar o projeto. É recomendado o uso de sistema Unix, mas a execução do script é possivel pelo terminal **git bash** do VSCode em sistemas Windows. No caso do Windows, é necessário também inicializar o Podman Desktop.

Fazer o download da imagem do projeto:

```bash

```
Após o download, navegar até o diretório e executar o script de inicialização:

```bash
./run-lojatech.sh
```
O script irá extrair o arquivo comprimido **lojatech-image.tar.gz** e inicializar o projeto.

Para encerrar a execução do container, execute o script de encerramento:

```bash
./stop-lojatech.sh
```
