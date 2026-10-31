# Installation instructions

## If you're on windows

*Prerequisities:*

1. Make sure you have chocolatey package manager installed through "choco --version". If not, open powershell as an administrator and run:
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

2. make sure to move to the folder where your setup-vpn repo is cloned.

*Here's a manual setup:*

1. firefox "https://github.com/SagerNet/sing-box/releases/download/v1.12.8/sing-box-1.12.8-windows-amd64.zip"
2. Copy command: cp ~\Downloads\sing-box-1.12.8-windows-amd64.zip
3. Press <Tab> and add <Space> . (it will copy the zip archieve right into the folder you're in)
4. choco install unzip
5. unzip sing-box-1.12.8-windows-amd64.zip
6. cd sing-box-1.12.8-windows-amd64
7. sing-box run -c ../config.json
8. run the last line of test-connection.sh which is: firefox "youtube.com" ...

Open bash

```bash

git clone https://github.com/Macsik121/setup-vpn

cd setup-vpn

```

Then run:
```bash
chmod +x setup-vpn.sh

./setup-vpn
```

In an external terminal with the same path(see in pwd):
```bash
chmod +x test-connection.sh

./test-connection
