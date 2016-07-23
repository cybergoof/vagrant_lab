
# Get the Damn Vulnerable Web App downloaded and started
# Refence what it normally takes to install http://www.computersecuritystudent.com/SECURITY_TOOLS/DVWA/DVWAv107/lesson1/


git clone https://github.com/nightmare-rg/dvwa-vagrant.git
cd dvwa-vagrant
vagrant up

# here we get show that we can get to the site

https://localhost:8088

# Now, we need to make it so that we get the PCAP


echo "Halting the VM"
vagrant halt
echo "VM has stopped"
echo ""

# Reference http://devblog.appriver.com/capture-network-packets-from-virtualbox/

# Need to rename the name of the VM to dvwa

VboxManage modifyvm dvwa --nictrace1 on --nictracefile1 c:\temp\dvwa.pcap

# Need to start the VM through Oracle's VirtualBox
# This is a significant problem with the network collection
