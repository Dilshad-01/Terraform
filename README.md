# Azure Ubuntu VM Deployment using Terraform

This project deploys an Ubuntu 22.04 Virtual Machine in Azure using Terraform with a modular structure.

## Resources Created

* Resource Group
* Virtual Network (VNet)
* Subnet
* Network Security Group (NSG)
* Public IP Address
* Network Interface
* Ubuntu 22.04 VM

## Prerequisites

* Terraform
* Azure CLI
* Azure Subscription

Login to Azure:

```bash
az login
```

## Deploy

Initialize Terraform:

```bash
terraform init
```

Validate:

```bash
terraform validate
```

Review the plan:

```bash
terraform plan
```

Deploy:

```bash
terraform apply
```

## Connect to VM

Get the public IP:

```bash
terraform output
```

SSH into the VM:

```bash
ssh azureuser@<public-ip>
```

## Destroy Resources

```bash
terraform destroy
```

## Project Structure

```text
terraform-azure/
│
├── provider.tf
├── main.tf
├── variables.tf
├── outputs.tf
│
└── modules/
    ├── resource-group/
    ├── vnet/
    ├── nsg/
    └── vm/
```

## Configuration

Default deployment:

* Resource Group: RG-Static_Web
* Location: Central US
* VM Name: VMAgent
* OS: Ubuntu 22.04 LTS
* VM Size: Standard_B2s
