.PHONY: apply destroy provision rebuild
apply:
	@echo "🛎 generating ssh keys"
	@sh ./scripts/sshkeygen.sh apply
	@echo "🛎 running terraform apply"
	@terraform apply

destroy:
	@sh ./scripts/sshkeygen.sh destroy
	@rm -rf ansible/*
	@terraform destroy

provision:
	@ansible-playbook -i ~/ansible_hosts cloudera-playbook/site.yml

rebuild: destroy apply