variable "backups" {
  description = "Whether backups are enabled."
  default     = "false"
}

variable "droplet_count" {
  type        = number
  description = " Number of droplets to deploy"
  default     = "1"
}

variable "droplet_name" {
  description = "The name of the droplet"
  default     = "hadooplab-sa"
}

variable "do_slug" {
  description = "The unique slug that indentifies the type of Droplet."
  default     = "s-4vcpu-8gb"
}

variable "monitoring" {
  description = "Whether monitoring agent is installed."
  default     = "false"
}

variable "disk_size" {
  type        = number
  description = "Disk size in GB"
  default     = "100"

}

variable "firewall_sources" {
  description = "A list of source CIDRs addresses to allow access from"
  type        = list(string)
  default     = ["0.0.0.0/0", "::/0"]
}

variable "image_name" {
  description = "The DO imgage name"
  default     = "centos-7-x64"
}

variable "region" {
  description = "The location of your server/s"
  default     = "nyc1"
}

variable "tags" {
  type    = list(string)
  default = ["hadooplab"]
}

variable "private_networking" {
  default = "false"
}

variable "DIGITALOCEAN_ACCESS_TOKEN" {
  default = ""
}

variable "SPACES_ACCESS_KEY_ID" {
  default = ""
}


variable "ssh_public_key_path" {
  default = "./"
}

variable "ssh_key_algorithm" {
  default = "ECDSA"
}

variable "ssh_key_ecdsa_curve" {
  default = "P384"
}

variable "SPACES_SECRET_ACCESS_KEY" {
  default = ""
}

variable "user_data" {
  default = ""
}

variable "droplet_ids" {
  type        = list
  default     = []
  description = "The list of the IDs of the Droplets assigned to the Firewall."
}