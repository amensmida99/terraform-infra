variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "eu-central-1"
}

variable "k8s_context" {
  description = "kubectl context to use for the Kubernetes provider"
  type        = string
  default     = "kind-learning"
} 