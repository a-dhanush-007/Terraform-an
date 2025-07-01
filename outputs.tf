output "inventory" {
  value = join("\n", [for i in aws_instance.ec2 :
    "${i.public_ip} ansible_user=ec2-user ansible_ssh_private_key_file=/home/ec2-user/.ssh/Key02.pem"
  ])
}

