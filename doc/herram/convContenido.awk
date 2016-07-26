#!/usr/bin/awk -f
# Convierte descripción de paquetes. 
# Dominio público. 2009. sin garantáis. vtamara@pasosdeJesus.org


#/^[-a-zA-Z0-0_]*-\[v\]  *[A-Za-z0-9].*/ {
/^[-a-zA-Z0-9_]*-\[v\][ \t]*[A-Za-z].*/ {
	if (match($0, /^[-a-zA-Z0-9_]*-\[v\]/) <= 0) {
		print "Loco";
		exit(1);
	}
	r=substr($0, RSTART, RLENGTH-4);
	d=substr($0, RLENGTH+1, length($0) - RLENGTH);
	if (entabla == 1) {
		print "<row><entry>" r "</entry><entry>" d "</entry></row>";
	}
}

/^\* / {

	if (entabla == 1) {
		print "</tbody></tgroup></table>";
		entabla = 0;
	}
	d = substr($0, 3, length($0) - 2)
	if (d != "Soporte, librerías y desarrollo") {
		print "";
		print "";
		print "<table frame='all'><title>" d "</title>";
		print "  <tgroup cols='2' align='left' colsep='1' rowsep='1'>";
		print "    <thead><row>";
		print "        <entry>Paquete</entry><entry>Descripción</entry>";
		print "    </row></thead>";
		print "	   <tbody>";
		entabla = 1;
	}
}


BEGIN {
	entabla = 0;
	print "<?xml version=\"1.0\" encoding=\"ISO-8859-1\"?>";
}

END {
	if (entabla == 1) {
		print "</tbody></tgroup></table>";
	}
}
