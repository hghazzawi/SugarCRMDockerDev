FILE=config.php
if test -f "$FILE"; then 
    sudo chown -R www-data:www-data .	
    sudo find . -type d -exec chmod 2770 {} \;
    sudo find . -type f -exec chmod 660 {} \;
    sudo chmod 770 bin/sugarcrm
    echo "Permissions set"
else
    echo "Not a Sugar directory"
fi
