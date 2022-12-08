# Setting up VM in Linode using a Terraform template

To setup a VM in Linode using a Terraform template file and an SSH key file, you can follow these steps:
1. Install Terraform on your local machine.
2. Replace the ``<your_linode_api_key>`` and ``<path_to_your_ssh_key_file>`` placeholders with your Linode API key and the path to your SSH key file, respectively.
3. Run the following commands to initialize Terraform and create the VM:
    - **initialize Terraform:**
      
      ``terraform init``
    - **check the configuration:**
      
      ``terraform plan``
    - **create the VM:**
      
      ``terraform apply``
4. When prompted, enter ``yes`` to confirm the creation of the VM.
5. Once the VM is created, you can connect to it using the SSH key file and the IP address of the VM, which can be obtained using the ``terraform output`` command.
    - **get the IP address of the VM:**

      ``terraform output``
    - **connect to the VM using the SSH key file:**
      ``ssh -i <path_to_your_ssh_key_file> root@<vm_ip_address>``
      