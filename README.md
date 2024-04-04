# 프론트앤드 CI/CD 1주차

## Get Started


### DNS 배포하기

```tf
cd ./infra/dns

terraform init
terraform validate
terraform apply -var="profile=monthly-cs" -var="domain_name=<가비아에서 구매한 도메인 이름>"
terraform destroy -var="profile=monthly-cs" -var="domain_name=<가비아에서 구매한 도메인 이름>"

예)
terraform apply -var="profile=monthly-cs" -var="domain_name=unchaptered.shop"
```

### Website 배포하기

```tf
cd ./infra/website

terraform init
terraform validate
terraform apply -var="profile=monthly-cs" -var="domain_name=<가비아에서 구매한 도메인 이름>"
terraform destroy -var="profile=monthly-cs" -var="domain_name=<가비아에서 구매한 도메인 이름>"

예)
terraform apply -var="profile=monthly-cs" -var="domain_name=unchaptered.shop"
```