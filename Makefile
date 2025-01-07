all:
	@echo "/!\ Note: This is for dev only /!\\"
	@echo "Available commands:"
	@echo "  make init (install, install_plugin_dependencies, restart_ctfd)"
	@echo "  make install"
	@echo "  make install_plugin_dependencies"
	@echo "  make restart_ctfd"

init:
	@make install
	@make install_plugin_dependencies
	@make restart_ctfd

install:
	@echo "Pushing plugin to ctfd"
	@sudo docker exec -it $(shell sudo docker ps -q -f name=ctfd_dev) mkdir -p /opt/CTFd/CTFd/plugins/
	@sudo docker cp $(CURDIR) $(shell sudo docker ps -q -f name=ctfd_dev):/opt/CTFd/CTFd/plugins/containers

install_plugin_dependencies:
	@echo "Installing plugin dependencies"
	@sudo docker exec -it $(shell sudo docker ps -q -f name=ctfd_dev) pip install -r /opt/CTFd/CTFd/plugins/containers/requirements.txt

restart_ctfd:
	@echo "Restarting ctfd"
	@sudo docker restart $(shell sudo docker ps -q -f name=ctfd_dev)
	@echo "Plugin installed"
