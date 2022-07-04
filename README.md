## Azure Cli
```bash
az login
az account show
az account list --query "[?user.name=='<email>'].{Name:name, ID:id, Default:isDefault}" --output Table
az account set --subscription "<subscription>"
```

## Azure Service Principal
```bash
az login
export MSYS_NO_PATHCONV=1
az ad sp create-for-rbac --name <SERVICE_PRINCIPAL_NAME> --role Contributor
```

## Terraform
```bash 
terraform import module.az_resource_group.azurerm_resource_group.rg_az "/subscriptions/4cedc5dd-e3ad-468d-bf66-32e31bdb9148/resourceGroups/1-e5f03673-playground-sandbox"
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)