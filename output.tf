output "external_ip" {
  description = "VM's external IP"
  value       = google_compute_instance.profile_vm.network_interface[0].access_config[0].nat_ip
}