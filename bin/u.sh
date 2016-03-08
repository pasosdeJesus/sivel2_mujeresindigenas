#!/bin/sh
# Inicia produccion
if (test "${SECRET_KEY_BASE}" = "") then {
	echo "Definir variable de ambiente SECRET_KEY_BASE"
	exit 1;
} fi;
sudo su vJtamara -c "cd /var/www/htdocs/sivel2_mujeresindigenas; rm -rf public/assets/*; rake assets:precompile; echo \"Iniciando unicorn...\"; RACK_MULTIPART_LIMIT=2048 SECRET_KEY_BASE=${SECRET_KEY_BASE} bundle exec unicorn_rails -c ../sivel2_mujeresindigenas/config/unicorn.conf.minimal.rb  -E production -D"


  

