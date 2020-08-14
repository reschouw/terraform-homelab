module "test-instances" {
  count = 2
  source = "../modules/vsphere-instance"

  hostname = "ans-${count.index+1}"
  playbook = "common.yml"
  ip-address = "192.168.1.5${count.index+1}/24"
  gateway = "192.168.1.1"
  dns-servers = "192.168.1.11, 192.168.1.12"
  num-cpus = 2
  memory = 2048
  disk-size = 8
  template = "ubuntu-18-04-20200810233459"
}

#module "ans-2" {
#  source = "../modules/vsphere-instance"
#
#  hostname = "ans-2"
#  playbook = "common.yml"
#  ip-address = "192.168.1.52/24"
#  gateway = "192.168.1.1"
#  dns-servers = "192.168.1.11, 192.168.1.12"
#  num-cpus = 2
#  memory = 2048
#  disk-size = 8
#  template = "ubuntu-18-04-20200709140801"
#}
