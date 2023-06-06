import "module" "tfplan-functions" {
  source = "git::https://github.com/hashicorp/terraform-sentinel-policies.git//common-functions/tfplan-functions/tfplan-functions.sentinel"
}

policy "restrict-aws-instances-type-and-tag" {
  source = "./restrict-aws-instances-type-and-tag.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "check-ec2-environment-tag" {
  source = "./check-ec2-environment-tag.sentinel"
  enforcement_level = "advisory"
}
