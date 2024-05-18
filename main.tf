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

module "eks" {
  source          = "terraform-aws-modules/eks/aws"
  cluster_name    = var.cluster_name
  cluster_version = "1.20"
  vpc_id          = var.vpc_id
  subnets         = var.subnets

  node_groups = {
    eks_nodes = {
      desired_capacity = 2
      max_capacity     = 10
      min_capacity     = 1
      instance_type    = "m4.large"
      ami_id           = data.aws_ami.latest_eks_worker.id
      additional_tags  = {
        Environment = "test"
        Name        = "audsat-eks-worker-node"
      }
    }
  }
}

variable "aws_region" {
  description = "AWS region"
  default     = "us-west-2"
}

variable "cluster_name" {
  description = "EKS cluster name"
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
