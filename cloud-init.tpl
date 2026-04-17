#cloud-config
users:
%{ for user in users ~}
  - name: ${user.name}
    ssh_authorized_keys:
      - ${user.ssh_auth_key}
%{ endfor ~}
