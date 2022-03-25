resource "aws_security_group" "iac_test" {
    name = "sg_iac_test"
    description = "IAC PR block"
    vpc_id = module.turo_subaccount.vpc_id
    ingress {
        from_port = 0
        to_port = 0
        protocol = -1
        self = true
    }
    egress {
    from_port = 0
        to_port   = 0
        protocol  = -1
        self      = true
      }
      tags = {
        DeployedBy = "Terraform Enterprise: terraform-aws"
      }
}