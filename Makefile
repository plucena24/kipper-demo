#
# Simplify calling compounded jobs
#

usage:
	@echo "usage: make <build|check|test|deploy> [ PARAMETER=value ]"
	@echo

test: build check showdiffs

build:
	ansible-playbook -i production build.yml

check:
	ansible-playbook -i production deploy.yml --check

showdiffs:
	bash show_diffs.sh

deploy:
	ansible-playbook -i production deploy.yml

