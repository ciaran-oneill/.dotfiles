#Makefile

#Set variables
LINUX_SCRIPT=./bin/linux.sh
CLEAN_SCRIPT=./bin/cleanup.sh

#Define targets and their dependencies
linux: clean
@bash $(LINUX_SCRIPT)

clean:
@bash $(CLEAN_SCRIPT)

#Set file permissions
chmod +x $(LINUX_SCRIPT) $(CLEAN_SCRIPT)
