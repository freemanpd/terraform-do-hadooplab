module "hadooplab" {
  source             = "./modules"
  droplet_name              = "hadooplab-sa"
  region             = "nyc1"
  image_name            = "centos-7-x64"
  droplet_count      = "1"
 do_slug     = "s-6vcpu-16gb"
  disk_size          = "100"
  private_networking = "false"
  backups            = "false"
  monitoring         = "false"
}