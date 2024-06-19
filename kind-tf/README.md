# Cluster Kubernetes local com Kind e Terraform

Este script cria 1 control plane e 2 worker nodes. Você pode aumentar o número de nodes acrescentando mais worker nodes no arquivo `main.tf` na seção `resource "local_file" "kind_cluster"`.


Necessário ter o kind e o terraform instalados:

- [Terraform](https://www.terraform.io/downloads.html)
- [Kind](https://kind.sigs.k8s.io/)


- Inicializar o Terraform

    terraform init

- Criar o Cluster Kubernetes

    terraform apply --auto-approve

- Deletar o Cluster

    terraform destroy     
