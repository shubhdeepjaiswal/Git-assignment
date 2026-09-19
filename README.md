## Azure VM Implementation

This project creates multiple Azure Linux Virtual Machines using Terraform.

The VM configuration is managed using a Map of Objects.

Virtual Machines are created dynamically using Terraform for_each.

Each VM can have different:

- VM size
- OS disk size
- Admin username