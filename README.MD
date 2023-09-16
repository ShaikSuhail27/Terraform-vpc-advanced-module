This module will create the following below resources
 1. VPC creation
 2. Internet gateway creation
 3. 2 public subnets creation
 4. 2 database subnets creation
 5. 2 private subnets creation
 6. 3 route tables creation - public, private, database
 7. elastic ip creation
 8. NAT gateway creation
 9. subnet association with 3 route tables
 





 The inputs required for this module are:

 1. For VPC creation
    * Cidr_block (required): user need to provide Cidr for vpc creation
    * enable_dns_hostnames (optional): by default it is false, we need to set default as true
    * enable_dns_support (optional): by default it is true to enable dns support
    * common_tags (optional): user can enter the tags if require
    * project_name (required): user need to give the project name

 2. For Internet gateway creation
    * igw_tags (optional): user can enter the tags, if require

 3. For public subnet creation
    * public_subnet_cidr(required): User need to provide two public subnet cidr's

 4. For private subnet creation
    * private_subnet_cidr(required): User need to provide two private subnet cidr's

 5. For database subnet creation
    * database_subnet_cidr(required): User need to provide two database subnet cidr's











 The outputs for this module are:
 
1. Vpc_id: It will give the VPC id for creating some other resources
2. public_subnet_id: it will give the public subnet id's for creating the other resources
3. private_subnet_id: it will give the private subnet id's for creating the other resources
4. database_subnet_id: it will give the database subnet id's for creating the other resources
