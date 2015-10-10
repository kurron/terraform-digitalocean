provider "digitalocean" {
# we'll source it from DIGITALOCEAN_TOKEN in the environment
    token = "${var.do_token}"
}

# Create a new SSH key
resource "digitalocean_ssh_key" "default" {
    name = "Terraform Example"
    public_key = "${file( ".ssh/id_rsa.pub" )}"
}

# Create a new Web droplet in the nyc2 region
resource "digitalocean_droplet" "docker" {
    image = "${var.do_image}"
    name = "docker"
    region = "${var.do_region}"
    size = "${var.do_size}"
    backups = false 
    ipv6 = false 
    private_networking = false 
    ssh_keys = ["${digitalocean_ssh_key.default.id}"]
#   user_data = "" 
}

