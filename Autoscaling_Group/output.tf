output "this_autoscaling_group_id" {
  description = "The autoscaling group id"
  value       = "${element(concat(aws_autoscaling_group.this.*.id, list("")), 0)}"
}

output "this_autoscaling_group_name" {
  description = "The autoscaling group name"
  value       = "${element(concat(aws_autoscaling_group.this.*.name, list("")), 0)}"
}

output "this_autoscaling_group_arn" {
  description = "The ARN for this AutoScaling Group"
  value       = "${element(concat(aws_autoscaling_group.this.*.arn, list("")), 0)}"
}