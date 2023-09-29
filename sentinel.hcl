import "module" "tfplan-functions" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-sentinel-policies/main/common-functions/tfplan-functions/tfplan-functions.sentinel"
}

policy "restrict-aws-instances-type-and-tag" {
  source = "./restrict-aws-instances-type-and-tag.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "check-ec2-environment-tag" {
  source = "./check-ec2-environment-tag.sentinel"
  enforcement_level = "advisory"
}

policy "restrict-static-credentials" {
  source = "./restrict-static-credentials.sentinel"
  enforcement_level = "advisory"
}
