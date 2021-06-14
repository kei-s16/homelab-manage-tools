## これなに？
おうちAnsible(proxmox用)

## 必要なもの
- Ansible
- リポジトリで管理してないファイル
  - hosts
  - group_vars/all(とか)

## 流す方法
### hostsとgroup_vars書く
`group_vars/all`には`ssh_remote_user`が必要(hostsに書いてもいい)  

### 流す
パスワード求められるので入れる  
```
$ ansible-playbook -i hosts site.yml --ask-become-pass --diff
```
