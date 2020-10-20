module "nginx" {
  source = "git@git.dorwinia.com:homelab/terraform-homelab.git//vsphere/modules/vsphere-instance?ref=vsphere-instance-v1.0"

  hostname = "nginx"
  playbook = "nginx.yml"
  ip-address = "192.168.1.145/24"
  gateway = "192.168.1.1"
  dns-servers = "192.168.1.11, 192.168.1.12"
  num-cpus = 2
  memory = 1024
  disk-size = 8
  template = "ubuntu-18-04-20200810233459"
}
