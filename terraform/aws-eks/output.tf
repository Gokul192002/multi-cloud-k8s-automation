output "eks_cluster_name" {
  description = "EKS Cluster name"
  value       = aws_eks_cluster.eks_cluster.name
}
