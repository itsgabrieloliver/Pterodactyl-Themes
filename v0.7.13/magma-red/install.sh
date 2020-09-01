if [ ! -f "artisan" ]; then
	echo "It doesn't seem like you are in the proper directory (/var/www/html/pterodactyl/). Moving to that location, please re-run this command."
	cd /var/www/html/pterodactyl/
	sleep 3
	
else
	echo "--------------------------------------------------------"
	echo "Welcome to the installer for Codex's Pterodactyl themes!"
	echo "Beginning installation of your new theme!"
	echo "--------------------------------------------------------"
	sleep 4
	
	echo "--------------------------"
	echo "Installing dependencies..."
	echo "--------------------------"
	sleep 2
	apt install zip
	apt install unzip
	apt install git
	apt update
	sleep 4
	
	echo "-------------------------"
	echo "Downloading your theme..."
	echo "-------------------------"
	sleep 2
	mkdir -p tempfolder && cd tempfolder && git clone https://github.com/lunr-neptr/Pterodactyl-Themes.git
	echo "DONE!"
	sleep 4
	
	echo "----------------------------------------"
	echo "Merging theme into pterodactyl folder..."
	echo "----------------------------------------"
	sleep 2
	cp -r Pterodactyl-Themes/v0.7.13/magma-red/public ..
	cp -r Pterodactyl-Themes/v0.7.13/magma-red/resources ..

	cd ..
	echo "DONE!"
	sleep 4
	
	echo "-----------------------"
	echo "Cleaning up a little..."
	echo "-----------------------"
	sleep 2
	rm -r tempfolder
	echo "DONE!"
	sleep 4
	
	echo "-----------------"
	echo "Clearing views..."
	echo "-----------------"
	sleep 2
	php artisan view:clear
	sleep 4
	
	echo "---------------------------------------------------------------"
	echo "Congratulations! You the theme has successfully been installed."
	echo "Thank you for downloading my theme! Enjoy!"
	echo "---------------------------------------------------------------"
	sleep 2
fi
	
