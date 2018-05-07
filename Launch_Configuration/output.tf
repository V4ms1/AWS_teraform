output "this_launch_configuration_id" {
  description = "The ID of the launch configuration"
  value       = "${var.launch_configuration == "" && var.create_lc ? element(concat(aws_launch_configuration.this.*.id, list("")), 0) : var.launch_configuration}"
}

output "this_launch_configuration_name" {
  description = "The name of the launch configuration"
  value       = "${var.launch_configuration == "" && var.create_lc ? element(concat(aws_launch_configuration.this.*.name, list("")), 0) : ""}"
}