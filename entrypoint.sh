#!/bin/bash
if  [  "$color"  ==  "black"  ]
then
        cp  /opt/rishi.html   /var/www/html/index.html
	cp  /opt/docker.png /var/www/html/
        httpd  -DFOREGROUND
elif  [   "$color"  ==  "red"    ]
then
        cp   /opt/red.html   /var/www/html/index.html
	cp  /opt/docker.png /var/www/html/
        httpd  -DFOREGROUND
elif  [   "$color"  ==   "green"     ]
then
        cp   /opt/green.html   /var/www/html/index.html
	cp  /opt/docker.png /var/www/html/
        httpd  -DFOREGROUND
else
        echo  "Sorry no color found  "   >/var/www/html/index.html
	cp  /opt/docker.png /var/www/html/
        httpd  -DFOREGROUND
fi
