## requirements
- provider
  - [danitso/proxmox](https://github.com/danitso/terraform-provider-proxmox)

## 使い方
1. 環境変数をセットする (`PROXMOX_VE_USERNAME`, `PROXMOX_VE_PASSWORD`, `PROXMOX_VE_ENDPOINT`)
2. `terraform plan` or `terraform apply`

環境変数のセットは `.zshenv` とかに書く

```
export PM_API_TOKEN_ID="YOUR_PROXMOX_API_TOKEN_ID"
export PM_API_TOKEN_SECRET="YOUR_PROXMOX_API_TOKEN_SECRET"
export PM_API_URL="https://YOUR_PROXMOX_SERVER_IP_OR_DOMAIN:8006/api2/json/"
```

see :  
https://registry.terraform.io/providers/danitso/proxmox/latest/docs
