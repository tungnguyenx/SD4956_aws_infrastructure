resource "aws_eks_cluster" "devops-eks" {
  name     = "devops-cluster"
  role_arn = "arn:aws:iam::885234002156:role/eksClusterRole"

  vpc_config {
    subnet_ids = var.subnet_ids
  }
}

resource "aws_eks_node_group" "worker-node-group" {
  cluster_name    = aws_eks_cluster.devops-eks.name
  node_group_name = "workernodes"
  node_role_arn   = "arn:aws:iam::885234002156:role/eksWorkerNodeEC2Role"
  subnet_ids      = var.subnet_ids
  instance_types  = ["t3.medium"]

  scaling_config {
    desired_size = 1
    max_size     = 2
    min_size     = 1
  }

  remote_access {
    ec2_ssh_key = "jenkins"
  }
}
