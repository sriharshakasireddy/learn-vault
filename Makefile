

ansible:
	git pull
	ansible-playbook -i $(tool_name)-internal.devopsazurepractice.online, -e username=harsha -e password=harsha@123456 -e tool_name= $(tool_name) playbook.yml

infra:
	git pull ; terraform init

	terraform apply -auto-approve -var username=harsha -var password=harsha@123456
