# QEMU_Runner
This little shell script might help you easier to run long QEMU commands.

# What is QEMU ?
   QEMU is a generic and open source machine emulator and virtualizer.

   When used as a machine emulator, QEMU can run OSes and programs made for one machine (e.g. an ARM board) on a different machine (e.g. your own PC). By using dynamic translation, it achieves very good performance.

   When used as a virtualizer, QEMU achieves near native performances by executing the guest code directly on the host CPU. QEMU supports virtualization when executing under the Xen hypervisor or using the KVM kernel module in Linux. When using KVM, QEMU can virtualize x86, server and embedded PowerPC, and S390 guests.


 # Download ans install on Fedora Linux / Debian GNU Linux / Ubuntu Linux / Linux Mint
   sudo apt-get install git libglib2.0-dev libfdt-dev libpixman-1-dev zlib1g-dev

 # Getting the source code
   git clone git://git.qemu-project.org/qemu.git

 # install
    cd qemu/
   ./configure
    make
    sudo make install

 # Help
  ./configure --help

   
