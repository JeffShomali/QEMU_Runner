# QEMU Runner Bash Script
   This little shell script might help you easier to run long QEMU commands.




---
### What is QEMU ?
   QEMU is a generic and open source machine emulator and virtualizer.

   When used as a machine emulator, QEMU can run OSes and programs made for one machine (e.g. an ARM board) on a different machine (e.g. your own PC). By using dynamic translation, it achieves very good performance.

   When used as a virtualizer, QEMU achieves near native performances by executing the guest code directly on the host CPU. QEMU supports virtualization when executing under the Xen hypervisor or using the KVM kernel module in Linux. When using KVM, QEMU can virtualize x86, server and embedded PowerPC, and S390 guests.

### Download and install on Fedora Linux / Debian GNU Linux / Ubuntu Linux / Linux Mint:
```
   sudo apt-get install git libglib2.0-dev libfdt-dev libpixman-1-dev zlib1g-dev
```
### Getting the source code
```
   git clone git://git.qemu-project.org/qemu.git
```
### install
   ```
   cd qemu/
   ./configure
   make
   sudo make install
   ```
### Help
```
   ./configure --help
```
   ---
### Run Script
The qemuRunner.bash script might make it easier to run long qemu commands. You can copy the script  to your home directory. Invoke the script with *./qemuRunner.bash* followed by these arguments:

```
   a=hda-image
      required, specificies disk image to boot
   b=hdb-image
      optional, specificies 2nd disk image
   c=cdrom-image
      optional, specificies CD/DVD image
   d=hdd-image
      optional, specificies 3rd disk image
   n=number
```
optional, specificies number of network interfaces number can be 1 or 2

cd
boots from cd image
Enter the arguments with no spaces around = so each argument is a single word.
The script checks for bad arguments but does not check if image files exist, are readable, or are QEMU image files. Error messages are minimal.

### Usage:

```
./qemuRunner.bash a=disk0.img
      starts qemu with the usual options, boots from disk0.img
./qemuRunner.bash a=disk0.img c=/pub/iso/winxp.iso cd
      uses /pub/iso/winxp.iso for the cdrom image and boots from it
./qemuRunner.bash a=disk0.img b=disk1.img  d=disk2.img
      uses disk1.img for hdb and disk2.img for hdd
./qemuRunner.bash a=disk0.img n=1
   configures 1 network interface
```
