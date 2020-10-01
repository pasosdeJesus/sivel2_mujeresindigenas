#!/bin/sh
# Inicia produccion
if (test "${SECRET_KEY_BASE}" = "") then {
	echo "Definir variable de ambiente SECRET_KEY_BASE"
	exit 1;
} fi;
if (test "$USUARIO_AP" = "") then {
	echo "Falta USUARIO_AP"
	exit 1;
} fi;
DOAS=`which doas 2> /dev/null`
if (test "$?" != "0") then {
	DOAS="sudo"
} fi;
$DOAS su $USUARIO_AP -c "cd /var/www/htdocs/sivel2_mujeresindigenas; /bin/rm -rf public/assets/* public/mujeresindigenas/sivel2/assets/* 2> /dev/null"
$DOAS su $USUARIO_AP -c "cd /var/www/htdocs/sivel2_mujeresindigenas; bin/rails assets:precompile RAILS_ENV=production;"
$DOAS su $USUARIO_AP -c "cd /var/www/htdocs/sivel2_mujeresindigenas; echo \"Iniciando unicorn...\"; RACK_MULTIPART_LIMIT=2048 SECRET_KEY_BASE=${SECRET_KEY_BASE} bundle exec unicorn_rails -c ../sivel2_mujeresindigenas/config/unicorn.conf.minimal.rb  -E production -D"
