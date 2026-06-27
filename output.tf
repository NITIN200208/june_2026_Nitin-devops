output "server_public_ip" {
  description = "Public IP of Ansible EC2 Server"
  value       = aws_instance.server.public_ip
}

output "eks_cluster_name" {
  description = "Name of the EKS Cluster"
  value       = aws_eks_cluster.eks.name
}
output "eks_endpoint" {

  value = aws_eks_cluster.eks.endpoint

}