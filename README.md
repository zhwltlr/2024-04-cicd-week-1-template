# 프론트앤드 CI/CD 1주차

## Get Started


### DNS 배포하기

```tf
cd ./infra/dns

terraform init
terraform validate
terraform apply -var="profile=edint_official" -var="domain_name=unchaptered.shop"
terraform destroy -var="profile=edint_official" -var="domain_name=unchaptered.shop"
```

### Website 배포하기

```tf
cd ./infra/website

terraform init
terraform validate
terraform apply -var="profile=edint_official" -var="domain_name=unchaptered.shop"
terraform destroy -var="profile=edint_official" -var="domain_name=unchaptered.shop"
```