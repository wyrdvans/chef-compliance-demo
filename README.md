# chef-compliance-demo

This repo contains a cookbook to create a local machine to demo chef-compliance.

It currently only creates an ubuntu machine.

# Running a Demo
1. In the repo, run: ```kitchen verify ubuntu``` This will startup the ubuntu kitchen environment.
2. Once that is started, run: ```kitchen login ubuntu``` to login to the machine.
3. Run the following command to finish configuring chef-compliance: ```chef-compliance-ctl reconfigure```
4. Run the following command to create an admin user: ```chef-compliance-ctl user-create admin 'p@ssworD'```
5. Now you should be able to login to http://192.168.33.33 using the credentials created in the previous command.

# Resources
* [Install Chef Compliance](https://docs.chef.io/install_compliance.html)
* [Chef Compliance Information](https://www.chef.io/compliance/)
