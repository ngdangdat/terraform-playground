module "vpc" {
  source              = "./vpc"
  vpc_gke_name        = "google-vpc-gke"
  vpc_gke_subnet_name = "google-vpc-subnet-gke"
}

module "gke" {
  source                      = "./gke"
  vpc_name                    = module.vpc.vpc_gke_name
  project_id                  = var.project_id
  subnet_name                 = module.vpc.subnet_gke_name
  ip_secondary_pods_range     = "${module.vpc.subnet_gke_name}-pods-range"
  ip_secondary_services_range = "${module.vpc.subnet_gke_name}-services-range"
}
