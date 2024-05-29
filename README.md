# **CryptoChat**: Beyond Secure Messaging 
Chatroom based on RSA protocol 



Welcome to **CryptoChat** - where conversations remain truly private. Built on the robust Python ecosystem, our application ensures that every word you send is wrapped in layers of encryption. Whether you're discussing sensitive business details or sharing personal stories, **CryptoChat** provides the sanctuary you need in the digital age. Dive in, and experience the next level of secure messaging!

---

## Features of **CryptoChat** 

1. **End-to-End Encryption**: Every message is secured from sender to receiver, ensuring utmost privacy.
2. **User-Friendly Interface**: Navigating and messaging is intuitive and simple, making secure conversations a breeze.
3. **Multi-Platform Support**: Whether on a desktop or mobile device, **CryptoChat** is always at your fingertips.
4. **Robust Backend**: Built on the powerful Python ecosystem, our chat is reliable and fast.
5. **Open Source**: Dive into our codebase, contribute, and make it even better for everyone.
6. **Multimedia Support**: Not just text - send encrypted images, videos, and files with ease. (Demo)
7. **Group Chats**: Have encrypted conversations with multiple people at once.
8. **Adaptive Encryption Modes**: Choose between unencrypted and encrypted chat modes as per your need

---

## Requirements

- Python 3.x
- cryptography
- colorama

## Installation

1. Clone the repository:

   ```shell
   git clone https://github.com/beastbroak30/Networkchat-crypto
   ```

2. Navigate to the project directory:

   ```shell
   cd CryptoChat
   ```

3. Install the required dependencies:

   ```shell
   pip install -r requirements.txt
   ```
---   

## Usage 
#### Dev usage 

```shell
$ python3 serverE.py --help
usage: serverE.py [-h] [--host HOST] [--port PORT] [--key KEY] [--loglevel {DEBUG,INFO,WARNING,ERROR,CRITICAL}] [--logfile LOGFILE]

Start the chat server.

options:
  -h, --help            show this help message and exit
  --host HOST           The IP address to bind the server to. (Default=0.0.0.0)
  --port PORT           The port number to bind the server to. (Default=12345)
  --key KEY             The secret key for encryption. (Default=mysecretpassword)
  --loglevel {DEBUG,INFO,WARNING,ERROR,CRITICAL}
                        Set the logging level (Default: INFO)
  --logfile LOGFILE     Set the log file name. (Default: server.log)
--------------------------------------------------------------------------
$ python3 clientE.py --help
usage: clientE.py [-h] [--host HOST] [--port PORT] [--key KEY]

Connect to the chat server.

options:
  -h, --help   show this help message and exit
  --host HOST  The IP address to bind the server to. (Default=127.0.0.1)
  --port PORT  The port number to bind the server to. (Default=12345)
  --key KEY    The secret key for encryption. (Default=mysecretpassword)
```

- `--help`    : show this help message and exit
- `--host`    : The IP address to bind the server.
- `--port`    : The port number to bind the server.
- `--key `    : The secret key for encryption
- `--loglevel`: Set the logging level
- `--logfile` : Set the log file name

  
### For prompting execution
- Windows
  1. Server hosting:
  ```shell
  .\hostE.sh
  ```
  2. Client connect:
  ```shell
  .\userE.sh
  ```
- Linux
  1. Server hosting:
  ```shell
  chmod +x hostE.sh
  .\hostE.sh 
  ```
  2. Client connect:
  ```shell
  chmod +x userE.sh
  .\userE.sh
  ```
  
## **Help** menu from within the program
```shell
python3 clientE.py 
Enter your username: ak
Help Menu:
	/help       -> Help menu
ak: Enter your message: /help
ak: Enter your message: 
Help Menu:
	/help                           -> Help Menu
	/exit                           -> Exit the program.
  	/clear                          -> Clear the chat screen.
	/userlist                       -> View the list of connected users.
	/dm [user] [message]            -> Send a direct message to a user.
	/changeuser [new_username]      -> Change your username.
	/devs                           -> For admiring whom it is made by.
	/ip 				-> For seeing the your ip addr.
	/send 				-> For sending the file to the (one user at a time)
	/receive 			-> For receiving the file from the (one user at time) 

ak: Enter your message: 
```

--------------------------------------------------


## Contributing

Contributions are welcome! If you find any issues or have suggestions for improvements, feel free to open an issue or submit a pull request.

## Contact

If you have any questions, comments, or suggestions about CryptoChat, please feel free to contact me:

- Email: akantarip30@gmail.com
## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.



  
