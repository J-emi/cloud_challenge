# Task 6

## Infrastructure as a Code

💡 The goal of this task is to automate the creation and management of resources in the Google Cloud Platform.

### 🧠 Knowlegde base

🚀 **Infrastructure as Code (IaC)** is the managing and provisioning of infrastructure through code instead of through manual processes.With IaC, configuration files are created that contain your infrastructure specifications, which makes it easier to edit and distribute configurations. It also ensures that you provide the same environment every time. Example of tool: **Terraform**

🚀  **Configuration management** is a process for maintaining computer systems, servers, and software in a desired, consistent state. It’s a way to make sure that a system performs as it’s expected to as changes are made over time. Example of tool: **Ansible**

🚀 Terraform state file:
    - The state file is a JSON **containing the definition of our infrastructure**. The file works with the Terraform code to define the “desired state” that we’ll like to achieve.
    - Whenever we change the configuration file, it automatically determines which part of our configuration is already created and which needs to be changed with the help of this file.
    - The state file helps provide a reference to Terraform to identify if a resource is present and stop it from being created again.

### 🛠️ Task steps:

1. Open Cloud Shell and check the version of Terraform using the below command:
    ```
    terraform version
    ```

2. Create a file called *main.tf*
    ```
    vim main.tf
    ```

    - configure a provider
    - create resource - VM

3. Initialize terraform
    ```
    terraform init
    ```
4. Check the plan of the terraform and output carefully (! important, it tells us what actions terraform will take)
    ```
    terraform plan
    ```
5. Apply the configuration that we have in the *main.tf*
    ```
    terraform apply
    ```
6. List the files that are now in the directory from which you're running the terraform apply command.
    ```
    cat terraform.tfstate
    ```
7. Add configuration to create resources:
    - Cloud Storage bucket that has public access configured
    - Compute Instance
    - Cloud SQL instance with Postgres engine. Create database called dareit and a user called dareit_user. Manually change the password of the dareit_user

8. Upload manually the *index.html* file (that you previously created in Task 1) into the newly created bucket.

9. Create a new folder in your *cloud_challenge repo* with name *task_6*, commit the *main.tf* file there. (don’t commit your terraform state file). Copy the URL of the object (*index.html*) from your bucket and add it to *readme.md*.

⤵️

https://storage.cloud.google.com/jch-dareit-bucket/index.html
