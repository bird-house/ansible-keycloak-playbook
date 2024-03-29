.DEFAULT_GOAL := all

.PHONY: all
all: help

.PHONY: help
help:
	@echo "Please use \`make <target>' where <target> is one of"
	@echo "  help        to print this help message. (Default)"
	@echo "  roles       to install roles from ansible-galaxy."
	@echo "  play        to run ansible playbook."
	@echo "  clean       to remove *all* files that are not controlled by 'git'. WARNING: use it *only* if you know what you do!"

.PHONY: roles
roles:
	@echo "Installing required Ansible roles from ansible-galaxy ..."
	ansible-galaxy install -p roles -r requirements.yml

.PHONY: play
play: roles
	echo "Installing Keycloak with Ansible [all tasks] ..."
	ansible-playbook -i inventory.yml playbook.yml

.PHONY: clean
clean:
	@echo "Cleaning ..."
	@git diff --quiet HEAD || echo "There are uncommited changes! Not doing 'git clean' ..."
	@-git clean -dfx -e *.bak -e custom.yml -e etc/custom*.yml
