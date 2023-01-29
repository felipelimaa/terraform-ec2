# EC2 Instance with Terraform

> This document is under construction.

This project was created for deploy a new EC2 instance in AWS using Infrastructure as Code (IaC).

## The code aims to create an EC2 instance with:
- [X] Personalized Security Group :white_check_mark:
- [ ] Auto Scaling Groups (ASG) :clipboard:
- [ ] Elastic Load Balancing (ELB) :clipboard:
- [ ] Elastic File System (EFS) :clipboard:
- [ ] EC2 Policy :clipboard:
- [ ] IAM Policy :construction:

**Legends**
- :white_check_mark: - Completed
- :construction: - Working in progress
- :clipboard: - Pending start

## Running the project ##
* First you need to configure `aws cli`. For this, you can follow the [AWS page](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html) to do that.
* After configure `aws cli`, go to the folder where this project is located and execute the commands below:
    * :calling: Starting the terraform and downloading providers.
    ```sh
    terraform init
    ```
    * :pencil: Planning your code.
    ```sh
    terraform plan
    ```
    * :hammer: Applying your code.
    ```sh
    terraform apply
    ```
    > :point_up: After run this command, your infrastructure will be created in your provider. In this case, in AWS.
    * :boom: Destroying your infrastructure at the provider.
    ```sh
    terraform destroy
    ```
