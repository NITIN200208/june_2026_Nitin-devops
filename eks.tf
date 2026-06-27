resource "aws_eks_cluster" "eks" {

  name = var.cluster_name

  role_arn = aws_iam_role.eks_role.arn

  vpc_config {

    subnet_ids = [aws_subnet.public1.id, aws_subnet.public2.id]

    endpoint_private_access = true

    endpoint_public_access = true

  }

  depends_on = [

    aws_iam_role_policy_attachment.eks_cluster_policy

  ]

}