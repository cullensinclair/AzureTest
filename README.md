# Azure Test

## Task
## 1.1 OBJECTIVE
Launch a simple web site in a load balanced, highly available and zone-redundant manner
utilizing automation and Azure best practices
## 1.2 REQUIREMENTS
Virtual Network with a private subnet and all required dependent infrastructure
Azure Load Balancer with web server instances in the backend pool
- Include a simple health probe to make sure the web servers in the backend pool are
responding and healthy
- The health probe should automatically replace instances if they are unhealthy, and the
instances should come back into service on their own
Virtual Machine Scale Set that launches Virtual Machines and registers them to the backend
pool
- Establish a VMSS minimum and desired server count meeting Highly Available and zone
redundant requirement
- Establish a VMSS maximum
- Establish an Autoscale rule that scales up/down based on a metric of your choice (and
be able to demonstrate a scaling event)
Network Security Group allowing HTTP traffic to load balancer from anywhere (not directly to
the instance(s))
Network Security Group allowing only HTTP traffic from the load balancer to the instance(s)
Remote management ports such as SSH and RDP must not be open to the world
Some kind of automation or scripting that achieves the following:
- Install a web server (your choice – Apache, Nginx, and IIS are common examples)
- Deploys a simple “hello world” page for the web server to serve up
- May be written in the language of your choice (HTML, PHP, etc)
- May be sourced from the location of your choice (Git, cookbook file/ template, etc)
- Must include the server’s hostname in the “hello world” presented to the user
All Azure resources must be created using Terraform or Azure Resource Manager
No resources may be created or managed by hand in the portal, the Azure CLI, or with
Powershell

Solution Adapted From
https://docs.microsoft.com/en-us/azure/virtual-machine-scale-sets/quick-create-template-windows