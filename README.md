# Installation instructions

## For Windows

*Prerequisities:*

1. make sure to move to the folder where your setup-vpn repo is cloned.

### Docker installation

2. Make sure you have chocolatey package manager installed through "choco --version". If not, open powershell as an administrator and run:
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

3. if no docker installed, run : choco install docker-desktop


*Here's a manual setup:*

1. firefox "https://github.com/SagerNet/sing-box/releases/download/v1.12.8/sing-box-1.12.8-windows-amd64.zip"
2. Copy command: cp ~\Downloads\sing-box-1.12.8-windows-amd64.zip
3. Press <Tab> and add <Space> . (it will copy the zip archieve right into the folder you're in)
4. choco install unzip
5. unzip sing-box-1.12.8-windows-amd64.zip
6. cd sing-box-1.12.8-windows-amd64
7. sing-box run -c ../config.json
8. run the last line of test-connection.sh which is: firefox "youtube.com" ...

## For Linux

### Docker installation
*Phase 1:*
```bash
# Add Docker's official GPG key:
sudo apt update
sudo apt install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/ubuntu
Suites: $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}")
Components: stable
Architectures: $(dpkg --print-architecture)
Signed-By: /etc/apt/keyrings/docker.asc
EOF

sudo apt update
```

*Phase 2:*
```bash
sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo systemctl status docker
sudo systemctl start docker
sudo docker run hello-world
```

### Open bash

```bash

git clone https://github.com/Macsik121/setup-vpn

cd setup-vpn

```

Then run:
#### terminal 1
```bash
pwd

chmod +x setup-vpn.sh

./setup-vpn
```

#### terminal 2
```bash
cd (terminal 1 pwd-result)

chmod +x test-connection.sh

./test-connection
```

In an external terminal with the same path(see in pwd):
```bash
chmod +x test-connection.sh

./test-connection
```
