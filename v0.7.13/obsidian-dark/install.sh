if [ ! -f "artisan" ]; then
	echo "It doesn't seem like you are in the proper directory (/var/www/html/pterodactyl/). Moving to that location, please re-run this command."
	cd /var/www/html/pterodactyl/
	sleep 3
	
else
	echo "Welcome to the installer for Codex's Pterodactyl themes!"
	echo "Beginning installation of your new theme!"
	
	echo "Installing dependencies..."
	apt install zip
	apt install unzip
	apt install git
	sleep 3
	
	echo "Downloading your theme..."
	mkdir -p tempfolder && cd tempfolder && git clone https://github.com/gabesystems/Pterodactyl-Themes.git
	sleep 3
	
	echo "Merging theme into pterodactyl folder..."
	cp -r Pterodactyl-Themes/v0.7.13/obsidian-dark/public/ ..
	cp -r Pterodactyl-Themes/v0.7.13/obsidian-dark/resources/ ..
	cd ..
	sleep 3
	
	echo "Clearing views..."
	php artisan view:clear
	sleep 3
	
	echo "Congratulations! You the theme has successfully been installed."
	echo "Thank you for downloading my theme! Enjoy!"
	sleep 10
fi
	
