# pfuhepbnDownload a sing-box archhhieve with a needed version
# if you're on windows: https://github.com/SagerNet/sing-box/releases/download/v1.12.8/sing-box-1.12.8-windows-amd64.zip
wget https://github.com/SagerNet/sing-box/releases/download/v1.12.8/sing-box-1.12.8-linux-amd64.tar.gz

# 2. Распаковываем архив
tar -xf ./sing-box-1.12.8-linux-amd64.tar.gz

# 3. Переносим бинарник в системную папку /usr/local/bin/
sudo mv ./sing-box-1.12.8-linux-amd64/sing-box /usr/local/bin/

# 4. Проверяем, что программа теперь доступна и версия корректна
sing-box version

#mkdir /home/student/vpn-setup
#cp ./config.json /home/student/vpn-setup/config.json

sing-box check -c ./config.json

#gnome-terminal -- bash -c "./test-connection.sh"

sing-box run -c ./config.json
