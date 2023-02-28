# terragrunt-azure

This is a repository to test terragrunt/terraform patterns on the Azure cloud

* https://containers.dev/features 
* ghcr.io/devcontainers/features/azure-cli:1	
* ghcr.io/devcontainers/features/terraform:1	
* https://developer.hashicorp.com/terraform/language/meta-arguments/for_each

**pi-hole project**
* <https://www.gerjon.com/run-a-pihole-securely-in-azure/> - loose reference on setup

**Infra needed:**
* Resource Group
* Virtual Network
* Firewall
* Azure Firewall Policy
* Azure Gateway Subnet
* Static WAN IP Address for Firewall
* Azure Container Instance


**Python notes**
```
python3 -m venv venv
source venv/bin/activate
python3 -m pip install --upgrade pip
pip3 install -r requirements.txt
```
