variable "do_region" {
    description = "DigitalOcean region to launch droplet into."
    default = "nyc2"
}

variable "do_size" {
    description = "DigitalOcean droplet size."
    default = "512mb"
}

variable "do_image" {
    description = "DigitalOcean image to build the droplet from."
    default = "ubuntu-14-04-x64"
}

variable "do_token" {
    description = "DigitalOcean API token to use."
    default = "e3d517173d389f6c8bccf413c503267eca14e60dd005a578b9701be451c927a2"
}

