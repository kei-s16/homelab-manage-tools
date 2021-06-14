## これなに？
おうちAnsible(ArchLinux用)置いとくやつ

## 必要なもの
- Ansible
- リポジトリで管理してないファイル
  - hosts
  - group_vars/all(とか)

## 流す方法
### hostsとgroup_vars書く
`hosts`には`[master]`と`[node]`が必要  
`group_vars/all`には`ssh_remote_user`が必要(hostsに書いてもいい)  

### 流す
パスワード求められるので入れる  
```
$ ansible-playbook -i hosts site.yml --ask-become-pass --diff
```

## メモ
### master.yml
k8sのmaster

### node.yml
k8sのnodes
