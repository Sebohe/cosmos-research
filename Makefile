
init:
	ansible-playbook playbooks/init.yml

start: init
	gaiad  start &> ~/logs &
