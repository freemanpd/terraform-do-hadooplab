.PHONY: apply
apply:
	@echo "🛎 generating ssh keys"
	@sh ./scripts/sshkeygen.sh apply
	@echo "🛎 running terraform apply"
	@terraform apply

.PHONY: destroy
destroy:
	@sh ./scripts/sshkeygen.sh destroy
	@terraform destroy