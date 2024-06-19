terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.0"
    }
  }
}

provider "local" {}

resource "local_file" "kind_config" {
  content = <<-EOF
    kind: Cluster
    apiVersion: kind.x-k8s.io/v1alpha4
    nodes:
      - role: control-plane
        extraPortMappings:
        - containerPort: 30000
          hostPort: 30000
          listenAddress: "0.0.0.0"
          protocol: TCP
      - role: worker
      - role: worker    
  EOF

  filename = "${path.module}/config.yaml"
}

resource "null_resource" "cluster-kind" {
  depends_on = [local_file.kind_config]
  provisioner "local-exec" {
    command = "kind create cluster --config config.yaml"
  }
  
  provisioner "local-exec" {
    when    = destroy
    command = "kind delete cluster --name kind"
  }
}



