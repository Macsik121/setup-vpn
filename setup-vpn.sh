#wget https://github.com/SagerNet/sing-box/releases/download/v1.12.8/sing-box-1.12.8-linux-amd64.tar.gz

# 2. Распаковываем архив
# tar -xf /home/student/sing-box-setup/sing-box-1.12.8-linux-amd64.tar.gz

# 3. Переносим бинарник в системную папку /usr/local/bin/
sudo mv /home/student/sing-box-set-up/sing-box-1.12.8-linux-amd64/sing-box /usr/local/bin/

# 4. Проверяем, что программа теперь доступна и версия корректна
sing-box version

mkdir /home/student/vpn-setup
cp /home/student/sing-box-set-up/config.json /home/student/vpn-setup/config.json

sing-box check -c /home/student/vpn-setup/config.json

gnome-terminal -- bash -c "./test-connection.sh"

sing-box run -c /home/student/sing-box-set-up/config.json
