yum install -y git
yum install -y subversion
yum install -y nodejs
yum install -y npm
npm install --global yarn

#nginx module
git clone https://github.com/leev/ngx_http_geoip2_module '/root/install/nginx/src/ngx_http_geoip2_module'
yum -y install geoip-devel libmaxminddb-devel
# vim /www/server/panel/install/nginx.sh
# myOption="--with-http_realip_module --add-dynamic-module=/root/install/nginx/src/ngx_http_geoip2_module"
# ./configure ${myOption}
sh /www/server/panel/install/nginx.sh install 1.22