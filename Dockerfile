FROM atsu666/ioncube:5.6

RUN docker-php-ext-install bcmath

RUN curl -o ioncube.tar.gz "http://downloads3.ioncube.com/loader_downloads/ioncube_loaders_lin_x86-64.tar.gz" \
    && mkdir -p ioncube \
    && tar -xf ioncube.tar.gz -C ioncube --strip-components=1 \
    && mv ioncube/ioncube_loader_lin_5.6.so /var/www/ioncube_loader_lin_5.6.so \
    && rm -Rf ioncube.tar.gz ioncube 
