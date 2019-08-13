# SSH Connect
* Easy python ssh manager
# Installation 
* Clone the repository to you client

* Notice that you have to run the commands with `sudo` if needed

* Configure the file: `vim /your/path/to/file/servers.json`

    * Modify the array with your data

* Set the user rights `chmod 775 /your/path/to/file/sshConnection.py`

* Execute the script:

    * Open the file `vim /home/user/.bashrc`

    * Add line `alias sshC='/your/path/to/file/sshConnection.py'`
    
    * Save the file and reload the .bashrc `source .bashrc`
    
* Run `sshC` in the terminal
