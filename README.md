# Projeto de Arquitetura de Cluster em Alta Disponibilidade para Aplicação n8n com Mensageria na AWS

[![Terraform](https://img.shields.io/badge/Terraform-1.0+-623CE4?style=flat-square&logo=terraform)](https://www.terraform.io/)
[![AWS](https://img.shields.io/badge/AWS-Certified-FF9900?style=flat-square&logo=amazon-aws)](https://aws.amazon.com/)

Este repositório contém a configuração de infraestrutura como código (IaC) utilizando Terraform para provisionar um cluster em alta disponibilidade na AWS, rodando a aplicação n8n com suporte a mensageria.

## Arquitetura

Este projeto implementa uma arquitetura resiliente e escalável para hospedar a aplicação n8n, aproveitando os serviços gerenciados da AWS para garantir alta disponibilidade e desempenho otimizado.

## Estrutura do Projeto

A estrutura do projeto é organizada da seguinte forma:

```
├── .gitignore
├── .terraform/
├── .terraform.lock.hcl
├── main.tf
├── terraform.tfstate
├── variables.tf
├── vpc.internet-gateway.tf
├── vpc.private-route-table.tf
├── vpc.private-subnets.tf
├── vpc.public-route-table.tf
├── vpc.public-subnets.tf
└── vpc.tf
```

## Descrição dos Arquivos

- **main.tf**: Define o provedor AWS e configurações iniciais do Terraform.
- **variables.tf**: Define as variáveis utilizadas no projeto, incluindo tags, configuração do provedor AWS e detalhes da VPC.
- **vpc.tf**: Configura a VPC principal.
- **vpc.internet-gateway.tf**: Configura o Internet Gateway para a VPC.
- **vpc.public-subnets.tf**: Configura as subnets públicas.
- **vpc.private-subnets.tf**: Configura as subnets privadas.
- **vpc.public-route-table.tf**: Configura a tabela de rotas públicas.
- **vpc.private-route-table.tf**: Configura a tabela de rotas privadas.

## Pré-requisitos

- [Terraform](https://www.terraform.io/downloads.html) >= 1.0 instalado na máquina local.
- Credenciais da AWS configuradas.
- Conhecimento básico de AWS e Terraform.

## Como Usar

1. Clone este repositório:
```bash
git clone https://github.com/edgargmoura/n8n-queue-tf.git
cd n8n-queue-tf
```

2. Inicialize o Terraform:
```bash
terraform init
```

3. Revise e ajuste as variáveis em `variables.tf` conforme necessário.

4. Visualize o plano de execução:
```bash
terraform plan
```

5. Aplique a configuração do Terraform:
```bash
terraform apply
```

6. Para destruir a infraestrutura quando não for mais necessária:
```bash
terraform destroy
```

## Componentes da Infraestrutura

- **VPC**: Rede virtual isolada na AWS
- **Subnets Públicas**: Para recursos que precisam de acesso direto à internet
- **Subnets Privadas**: Para recursos internos protegidos
- **Internet Gateway**: Permite comunicação entre a VPC e a internet
- **Route Tables**: Controlam o tráfego de rede dentro da VPC

## Contribuição

Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou enviar pull requests.

## Licença

Este projeto está licenciado sob a [Licença MIT](LICENSE)
