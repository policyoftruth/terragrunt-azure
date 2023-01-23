# **Notes to bootstrap Azure for `Terraform` use**

## **Authenticate with the Azure CLI and create your Service Principal**
* `az login --use-device-code`
* `az account list-o table`
* `az account set --subscription="<SUBSCRIPTION_ID>"`
* `az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/<SUBSCRIPTION_ID>"`

## **Set environment variables for `Terraform` to operate**
I like to build a `local.env` which is represented in my `.gitignore`. You can use the bash `source` command to pick up these environment variables for `terraform` use. The values come from the output of the service principal creation. 

```
export ARM_CLIENT_ID='<APPLICATION ID>'
export ARM_TENANT_ID='<TENANT ID>'
export ARM_CLIENT_SECRET='<SERVICE PRINCIPAL PASSWORD>'
export ARM_SUBSCRIPTION_ID='<SUBSCRIPTION ID>'
```

## **Edit the `variables.tf` and EXECUTE EXECUTE EXECUTE**
