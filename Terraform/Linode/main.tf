provider "linode" {
  token = "<your_linode_api_key>"
}

resource "linode_instance" "vm" {
  image = "linode/centos7"
  region = "us-east"
  type = "g6-standard-2"
  authorized_keys = [file("<path_to_your_ssh_key_file>.pub")]
}
