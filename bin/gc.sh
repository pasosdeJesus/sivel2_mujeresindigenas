#!/bin/sh
# Hace pruebas, pruebas de regresión, envia a github y sube a heroku

if (test -f ".env") then {
	. ./.env
} fi;

grep "^ *gem.*sip.*,.*path:" Gemfile > /dev/null 2> /dev/null
if (test "$?" = "0") then {
	echo "Gemfile incluye un sip cableado al sistema de archivos"
	exit 1;
} fi;
grep "^ *gem.*sivel2_gen.*,.*path:" Gemfile > /dev/null 2> /dev/null
if (test "$?" = "0") then {
	echo "Gemfile incluye un sivel2_gen cableado al sistema de archivos"
	exit 1;
} fi;
grep "^ *gem.*sivel2_sjr.*,.*path:" Gemfile > /dev/null 2> /dev/null
if (test "$?" = "0") then {
	echo "Gemfile incluye un sivel2_sjr cableado al sistema de archivos"
	exit 1;
} fi;
grep "^ *gem.*cor1440_gen.*,.*path:" Gemfile > /dev/null 2> /dev/null
if (test "$?" = "0") then {
	echo "Gemfile incluye un cor1440_gen cableado al sistema de archivos"
	exit 1;
} fi;
grep "^ *gem.*debugger" Gemfile > /dev/null 2> /dev/null
if (test "$?" = "0") then {
	echo "Gemfile incluye debugger que heroku no quiere"
	exit 1;
} fi;
grep "^ *gem.*byebug" Gemfile > /dev/null 2> /dev/null
if (test "$?" = "0") then {
	echo "Gemfile incluye byebug que rbx de travis-ci no quiere"
	exit 1;
} fi;


if (test "$SINAC" != "1") then {
	NOKOGIRI_USE_SYSTEM_LIBRARIES=1 MAKE=gmake make=gmake QMAKE=qmake4 bundle update
	if (test "$?" != "0") then {
		exit 1;
	} fi;
	CXX=c++ yarn upgrade
	if (test "$?" != "0") then {
		exit 1;
	} fi;
} fi;
if (test "$SININS" != "1") then {
	NOKOGIRI_USE_SYSTEM_LIBRARIES=1 MAKE=gmake make=gmake QMAKE=qmake4 bundle install
	if (test "$?" != "0") then {
		exit 1;
	} fi;
	CXX=c++ yarn install
	if (test "$?" != "0") then {
		exit 1;
	} fi;
} fi;
if (test "$SINMIG" != "1") then {
	(bundle exec rake db:migrate sip:indices db:structure:dump)
	if (test "$?" != "0") then {
		exit 1;
	} fi;
} fi;

RAILS_ENV=test bundle exec rake db:drop db:setup; RAILS_ENV=test bin/rails db:migrate sip:indices
if (test "$?" != "0") then {
	echo "No puede preparse base de prueba";
	exit 1;
} fi;

bundle exec rake test
if (test "$?" != "0") then {
	echo "No pasaron pruebas";
	exit 1;
} fi;

bin/rails test
CONFIG_HOSTS=127.0.0.1 bundle exec rake test:system
if (test "$?" != "0") then {
	echo "No pasaron pruebas";
	exit 1;
} fi;


RAILS_ENV=test bundle exec rake db:structure:dump
b=`git branch | grep "^*" | sed -e  "s/^* //g"`
git status -s
if (test "$MENSCONS" = "") then {
	MENSCONS="Actualiza"
} fi;
git commit -m "$MENSCONS" -a
git push origin ${b}
if (test "$?" != "0") then {
	echo "No pudo subirse el cambio a github";
	exit 1;
} fi;

if (test "$CONH" == "1") then {
	git push heroku master
	heroku run rake db:migrate
} fi;
