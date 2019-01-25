# SSH Connect
* Easy ssh manager for shell
# Installation 
* Download the `sshConnection.sh` file!

* Notice that you have to run the commands with `sudo` if needed

* Configure the file: `vim /your/path/to/file/servers.json`

    * Modify the arrays with your data or add new arrays

* Set the user rights `chmod 775 /your/path/to/file/sshConnection.sh`

* Execute the script:

    * Open the file `vim /home/user/.bashrc`

    * Add line `alias sshConnection='/your/path/to/file/sshConnection.sh'`
    
    * Save the file and reload the .bashrc `source .bashrc`
    
* Run `sshConnection` in the terminal
