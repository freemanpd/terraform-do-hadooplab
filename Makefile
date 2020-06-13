.PHONY: apply
apply:
	@echo "🛎 generating ssh keys"
	@ssh-keygen -b 2048 -t rsa -f hadooplab_private_key -q -N "" <<< y
	@echo "🛎 running terraform apply"
	@terraform apply

.PHONY: destroy
destroy:
	@rm -rf hadooplab_private_key*
	@terraform destroy