# DNS Server (Projet Cloud Computing S8)

This project aims at creating a DNS server 

### Prerequisites 

This project uses Vagrant for virtual machine provisioning. The default hypervisor used here is VirtualBox.

You are free to use a different Hypervisor and modify the Vagrantfile accordingly.

That being said, you need Vagrant and a Hypervisor (VirtualBox here)

* Oracle Virtualbox (version 6.1) (<https://www.virtualbox.org/wiki/Downloads>)
* Oracle VM VirtualBox Extension Pack (adapté à la version de virtualbox installée précédement)
* HashiCorp Vagrant (<https://www.vagrantup.com/>)

Refer to the wiki for more informations.

## Future improvements 



## Using vagrant commands

Download Box 
    ```vagrant box add debian/buster64```

 Activate a VM (srv-dns)
    ```vagrant up srv-dns```

Connect to a VM 
    ```vagrant ssh srv-dns```

Stop a VM 
    ```vagrant halt srv-dns``

Destroy all the VMs (without confirmation)
    ```vagrant destroy -f```