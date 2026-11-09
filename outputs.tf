# ─────────────────────────────────────────
#  Outputs
# ─────────────────────────────────────────
output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.myvpc.id
}

output "subnet1_id" {
  description = "Public Subnet 1 ID"
  value       = aws_subnet.sub1.id
}

output "subnet2_id" {
  description = "Public Subnet 2 ID"
  value       = aws_subnet.sub2.id
}

output "webserver1_public_ip" {
  description = "Public IP of WebServer 1"
  value       = aws_instance.webserver1.public_ip
}

output "webserver2_public_ip" {
  description = "Public IP of WebServer 2"
  value       = aws_instance.webserver2.public_ip
}

output "s3_bucket_name" {
  description = "S3 Bucket Name"
  value       = aws_s3_bucket.example.bucket
}

output "aws_lb" {
  description = "myalb"
  value = aws_lb.mylb
}

output "target_group_arn" {
  description = "ARN of the target group"
  value       = aws_lb_target_group.my_tg.arn
}

output "listener_arn" {
  description = "ARN of the listener"
  value = aws_lb_listener.listener.arn 
}