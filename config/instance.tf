module "config" {
  source = "../modules/vsphere-instance"

  hostname = "config"
  playbook = "common.yml"
  ip-address = "192.168.1.50/24"
  gateway = "192.168.1.1"
  dns-servers = "192.168.1.11, 192.168.1.12"
  num-cpus = 2
  memory = 2048
  disk-size = 16
  template = "ubuntu-18-04-20200709140801"
}
