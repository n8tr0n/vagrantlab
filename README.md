# vagrantlab
Testing out vagrant to spin up an AD lab
Lots of copy pasta and inspiration from 
* https://github.com/rgl/windows-domain-controller-vagrant
* https://github.com/UNT-CAS/Vagrant-AD-Lab
* https://github.com/clong/DetectionLab

It's a work in progress. Requires VirtualBox. Currently tested on Windows 10 host with Vagrant. Spins up 4 machines so you'll need about thiiiiiiiiiiiiiiiiiiiiiiiiiiiis much space.

**Couple active accounts to know about**:
* vagrant:vagrant - is domain admin in case you need to troubleshoot 
* tester : It3st2Detest! is what you should start with on attacker VM ;) 

**Instalation Instructions:**
* Install Vagrant on your host. [Check out installation instructions here.](https://www.vagrantup.com/docs/installation)
* Clone this repo `git clone https://github.com/hashtaginfosec/vagrantlab.git`
* Navigate to clone repo on disk and run `vagrant up`
