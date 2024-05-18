provider "aws" {
  region = var.aws_region
}

data "aws_ami" "latest_eks_worker" {
  filter {
    name   = "name"
    values = ["amazon-eks-node-*"]
  }

  most_recent = true
  owners      = ["602401143452"]
}

resource "aws_eks_cluster" "cluster" {
  name     = var.cluster_name
  role_arn = aws_iam_role.cluster.arn

  vpc_config {
    subnet_ids = var.subnets
  }

  depends_on = [
    aws_iam_role_policy_attachment.cluster,
    aws_iam_role_policy_attachment.cluster_ro,
  ]
}

resource "aws_eks_node_group" "node_group" {
  cluster_name    = aws_eks_cluster.cluster.name
  node_group_name = "audsat-eks-worker-node"
  node_role_arn   = aws_iam_role.worker_nodes.arn
  subnet_ids      = var.subnets

  scaling_config {
    desired_size = 2
    max_size     = 10
    min_size     = 1
  }

  instance_types = ["m4.large"]

  remote_access {
    ec2_ssh_key = "audsat-keypair"
  }

  ami_type = "AL2_x86_64"
  disk_size = 20

  depends_on = [
    aws_iam_role_policy_attachment.worker_nodes,
    aws_iam_role_policy_attachment.worker_nodes_autoscaling,
  ]
}

module "db" {
  source  = "terraform-aws-modules/rds/aws"
  version = "~> 3.0"

  identifier = "audsatdb"

  engine            = "postgres"
  engine_version    = "13.3"
  instance_class    = "db.t3.micro"
  allocated_storage = 20

  name     = "audsatdb"
  username = "admin"
  password = "securepassword"
  port     = "5432"

  vpc_security_group_ids = ["sg-abcdefgh123456789"]
  subnet_ids             = var.subnets

  create_db_subnet_group = false
  publicly_accessible     = true

  tags = {
    Environment = "test"
    Name        = "audsat-rds-instance"
  }
}

# Variáveis
variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-west-2"
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "audsat-eks-cluster"
}

variable "vpc_id" {
  description = "VPC ID"
  type        = string
}

variable "subnets" {
  description = "List of subnets"
  type        = list(string)
}