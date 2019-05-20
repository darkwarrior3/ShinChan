#!/data/data/com.termux/files/usr/bin/bash
#colors
green="\e[1;92m"
red="\e[1;91m"
blue="\e[1;94m"
purple="\e[35m"
yellow="\e[1;93m"
pink="\e[1;95m"
skyblue="\e[1;96m"
white="\e[1;97m"
#now the script begains
clear
if [ -e "$HOME/../usr/bin/w3m" ]
then
	echo -e  $green Starting ShinChan v0.1
	echo "Yet Another Chan Client (YACC)"
else
	apt-get install w3m figlet && clear
fi
while true
do
	echo -e $white
	figlet ShinChan
	echo -e $yellow Warning!! Chan maybe illegal in your country. Use tor in another session to use it.
	echo
	echo -e $skyblue 1. Press [1] for 4chan
	echo -e $skyblue 2. Press [2] for 8chan
	echo -e $blue 3. Press [3] for 420chan
	echo -e $blue 4. Press [4] for 22chan
	echo -e $yellow 5. Press [5] for all Chan sites index
	echo -e $red 6. Help, About [6]
	echo -e $red 7. Press Any key to Exit
	echo
	echo -e $pink Input your choice
	echo "#" && read input
	echo "#"
	case $input in 
		[1]* ) w3m https://www.4chan.org/
			break;;
		[2]* ) w3m https://8ch.net/index.html
			break;;
		[3]* ) w3m https://420chan.org/
			break;;
		[4]* ) w3m https://22chan.org/
			break;;
		[5]* ) w3m https://encyclopediadramatica.rs/List_of_*chan_boards
			break;;
		[6]* ) clear && echo -e "$skyblue To exit from Chan press "q" then "y". About: GUI days are gone. CUI is already OP and it have almost every thing but not any chan client. This is a very simple chan client which helps you to navigate and use almost every chan site in CLI. Made by:- Dark Warrior Support us on Patreon https://www.patreon.com/femurtech and subscribe our YT channel youtube.com/c/FemurTech" && figlet FemurTech && read garbage;;
		*) echo -e "$green Good bye. See you soon again"; exit 0;;
	esac
done
