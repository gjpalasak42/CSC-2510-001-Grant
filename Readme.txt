#The following document serves as documentation for the project CSC-2510-001-Grant
Author: Grant Palasak
Date of start: 11/02/2023
Date of release: 11/06/2023
Point of Contact: Benjamin Burchfield

Additional Resources:
Project overall flowchart: flowchart.jpeg
Machine/Enviroment Requirements and setup: MachineReq.txt
Future Improvements: tofix.txt



Please used the respective repository branch for whichever environment you are in:
	Test branch for test environment
	Dev branch for development environment
	Prod branch for production environment 

Please follow setup directions in order for initial project use.
(Revisit piece-meal as Required)

**Ensure all requirements in MachineReq are completed before preceding and the machines have been rebooted after all changes were made**


#Setting up ansible configuration files: 
	
	Ensure that inside of ansible hosts file the [vm1] group has the ip address(es) of the web server only device(s) and the [vm2] group has the address(es) of the web server/ database hybrid device(s).
	Also ensure that under the respective [vm#:vars] the root username and root password are provided in the format given. (If desired you may replace root with any superuser as long as the password also matches that user)

	The bottom of the host file should look like this:
	
	#Webserver only
	[vm1]
	<Ip of Webserver>
	[vm1:vars]
	ansible_user=root
	ansible_password=<root password for webserver only server(s)>		

	#Webserver Database Hybrid
	[vm2]
	<Ip of Webserver/DB Hybrid>
	
	[vm2:vars]
	ansible_user=root
	ansible_password=<root password for hybrid server(s)>	
	



#Downloading playbooks and scripts:



Ansible hosts:
	All playbooks and relevant scripts will be stored in the project directory

Running the project (the execute script):
	Navigate to project folder
	exicute the following command: "ansible-playbook project.yml"



# Potential issues:
	If a git clone has not already been manually completed on vm1 or vm2 systems the git clone may hang up
	All cloned files will be stored in the root users directory
	All ssh keys must be generated as the root user



End of readme for project code: CSC-2510-001-Grant