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
}

variable "subnets" {
  description = "List of subnets"
  type        = list(string)
}