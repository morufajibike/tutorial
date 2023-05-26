## Overview
This is a sample repository for getting started with Ansible

## Prerequisites 
### Set up your Control Node
To use this demo Ansible project, you will need the following on the control node:
- Download and install the [Vagrant binary](https://www.vagrantup.com/downloads) for your operating system.
    - Remember that you can't use a Windows machines as an Ansible control node.
- Download and install the [VirtualBox](https://www.virtualbox.org/wiki/Downloads) for your operating system.
- Install Ansible with [pip](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-and-upgrading-ansible-with-pip) or [operating system package managers](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-ansible-on-specific-operating-systems).

## Test your Managed Nodes
We are going to create 2 managed nodes with Vagrant and VirtualBox. This is just for the sake of demo. You can use Ansible to manage remote machines.
- Create managed nodes/machines with `vagrant up`. This will create 2 nodes as defined in `Vagrantfile`.
    - If you are using a MacBook and you encounter an error similar to this:
        ```
            ==> default: Booting VM...
            There was an error while executing VBoxManage, a CLI used by Vagrant
            for controlling VirtualBox. The command and stderr is shown below.

            Command: ["startvm", "216e6819-0101-45fe-a04d-09be742072c8", "--type", "headless"]
        ```
        do the following:
        ```
        Go to System Preferences ->  Security & Privacy -> General tab -> Click the lock button on bottom left and enter your admin password -> Click "Allow" button where there is the message stating “System software from developer ‘Oracle America, Inc’ was blocked from loading”.
        ```

- To view the metadata of our hosts inventory, use the following command:
    ```
    ansible-inventory -i inventory --list
    ```
- To ping our hosts inventory, use the following command:
    ```
    ansible -i inventory all -m ping
    ```

    - If you encounter errors with SSH, possibly with `hosts2`, use the following command to check the machine:
        ```
        ansible all -i inventory --limit host2 -a "/bin/echo hello"
        ```

-  To copy a file to our test nodes and verify:
    - To copy a file to our test nodes, use the following command:
        ```
        ansible all -i inventory -m ansible.builtin.copy -a "src=./demo.txt dest=/tmp"
        ```
        This command uses the module `ansible.builtin.copy` to copy the file `demo.txt` to the `tmp` directory on the test nodes.

    - To confirm the test file has been copied to both managed nodes, use the following command:
        ```
        ansible all -i inventory -a "cat /tmp/demo.txt"

        ```

## Clean up Managed Nodes
Make sure to clean up the resources created above with the command `vagrant destroy`. This will remove the 2 test(managed) nodes we have used for this demo.