SHELL = /bin/sh

build:
   terraform provision

destroy:
   terraform destroy

provision:
   ansible-playbook --limit hadoop -u centos ansible/plays/hadoop.yaml -b root