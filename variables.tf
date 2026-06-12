variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-west-1"
}

variable "public_key" {
  description = "SSH public key content for key pair"
  type        = string
}
