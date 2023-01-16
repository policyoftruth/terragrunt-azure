#!/bin/sh

### versions
terraform_version="1.3.7"
terragrunt_version="0.42.8"

echo "terraform version is ${terraform_version}"
echo "terragrunt version is ${terragrunt_version}"

### fetch terraform
wget -q "https://releases.hashicorp.com/terraform/${terraform_version}/terraform_${terraform_version}_linux_amd64.zip" -O ./terraform.zip
unzip -o ./terraform.zip > /dev/null 2>&1
sudo install terraform /usr/local/bin/
rm -f ./terraform.zip ./terraform

### fetch terragrunt
wget -q "https://github.com/gruntwork-io/terragrunt/releases/download/v${terragrunt_version}/terragrunt_linux_amd64" -O ./terragrunt
sudo install terragrunt /usr/local/bin/
rm -f ./terragrunt

