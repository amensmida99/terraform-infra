variable "aws_region" {
  description = "AWS region (unused - kept for the currently-inactive aws provider)"
  type        = string
  default     = "eu-central-1"
}

variable "azure_location" {
  description = "Azure region to deploy the AKS cluster into"
  type        = string
  default     = "westeurope"
}

variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
  default     = "learning-aks-rg"
}

variable "aks_cluster_name" {
  description = "Name of the AKS cluster"
  type        = string
  default     = "learning-aks"
}

variable "aks_dns_prefix" {
  description = "DNS prefix for the AKS cluster API server"
  type        = string
  default     = "learning-aks"
}

variable "aks_node_vm_size" {
  description = "VM size for the AKS default node pool"
  type        = string
  default     = "Standard_B2s"
}

variable "aks_node_count" {
  description = "Number of nodes in the AKS default node pool"
  type        = number
  default     = 1
}
