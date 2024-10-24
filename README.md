# Structure of Repository:

```repo-environment/
├── produtos/
│   ├── produto-a/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   └── produto-b/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
├── global/
│   ├── route53.tf
│   ├── vpc.tf
│   └── iam.tf
├── backend.tf
├── providers.tf
├── versions.tf
├── variables.tf
├── outputs.tf
├── main.tf
├── README.md
└── .gitignore
```
# Comands:

terraform init
terraform plan
terraform apply
