

infra:
	git pull ; terraform init

	terraform apply -auto-approve -var username=harsha -var password=harsha@123456


ansible:
	git pull
	ansible-playbook -i $(tool_name)-internal.devopsazurepractice.online, playbook.yml -e ansible_user=harsha -e ansible_password=harsha@123456 -e tool_name=$(tool_name)
