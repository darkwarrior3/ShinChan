#!/data/data/com.termux/files/usr/bin/bash
apt update && apt upgrade
apt install w3m figlet
clear
mv shinchan.sh /$HOME/../usr/bin/shinchan
chmod +x /$HOME/../usr/bin/shinchan
cd ..
rm -rf ShinChan
figlet Femurtech
echo Made by Dark Warrior
echo To start ShinChan just type shinchan in your console
