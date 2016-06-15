 
## Administración {#administracion}

**Logros**

* Añade y elimina registros a tablas básicas.

* Puede hacer volcados de la base de datos y sacar copias de forma segura.

Un usuario con el rol de Administrador, podrá realizar diversas operaciones desde la interfaz de SIVeL2: administrar usuarios, modificar tablas básicas (con opciones de algunos de los campos de la ficha). El administrador desde su cuenta en el sistema operativo podrá: sacar copias de respaldo manualmente, programar copias automáticas y recuperar copias de respaldo (en la misma base o en otra nueva). También consideramos que debe realizar otras labores con el sistema operativo y la infraestructura de red como: actualizar SIVeL2 y la distribución adJ del sistema operativo cuando se publiquen nuevas versiones (cada 6 meses); auditar seguridad del servidor y solucionar problemas en caso de fallas. Consideramos que también es importante para el administrador sugerir mejoras a la infraestructura tecnológica (ver Sección 3, “Infraestructura Tecnológica”) de su organización, capacitar y dar soporte a los usuarios y en general consideramos que debe ayudar a garantizar que la base esté disponible permanentemente sólo para los usuarios autorizados de la organización.

En la interfaz web un usuario que no tenga el rol de Administrador no podrá ingresar a modificar tablas básicas ni a manejar usuarios.

## Labores administrativas desde la interfaz web {# labores_administrativas _desde_la_interfaz_web}

### Tablas básicas {#tablas_basicas}

Ingresando por el menú Administración->Tablas Básicas puede cambiar parametros de cualquiera de las tablas básicas.

![Tablas Básicas](tablas_basicas.png)

Al elegir una de las tablas, verá los registros que tiene y podrá bien crear uno nuevo (con el enlace Nuevo al final de los registros) o bien editar o eliminar un registro. La siguiente figura ejemplifica los registros de Estados civiles.

![Estados civiles](https://github.com/BlancaInesAcosta/sivel2_mujeresindigenas_doc/blob/master/estados_civiles.png?raw=true)

Para no perder compatibilidad entre su instalación de SIVeL2 y la de otras organizaciones, pero a la vez para permitirle personalizar el sistema a sus necesidades de sistematización de información, sugerimos no cambiar ni eliminar los registros de las tablas básicas, sino agregar los que necesite su organización y deshabilitar (poniendo una fecha de deshabilitación) los registros que no requiera. En la siguiente figura se presenta el formulario para añadir un nuevo Estado civil:

![Nuevo Estado civil](https://github.com/BlancaInesAcosta/sivel2_mujeresindigenas_doc/blob/master/nuevo_estado_civil.png?raw=true)

Cada entrada (i.e registro) de una tabla básica tiene una llave, que puede constar de uno o más datos (i.e campos) del registro. Al actualizar tablas básicas tenga en cuenta que no pueden modificarse las llaves. Por ejemplo en una categoría ya ingresada no es posible modificar supracategoría o fecha de violencia. Si requiere actualizar una llave en un registro, debe primero eliminarlo de la tabla básica y después volverlo a añadir haciendo los cambios apropiados.

En general si añade datos a una tabla cuya llave sea un dato numérico, no necesitará elegir un número para la llave pues el sistema lo hará automáticamente.

En general la información de cada tabla básica es autoexplicativa, algunas que pueden requerir aclaración adicional son:

* Categoría: No se numeran automáticamente para que cada organización pueda proponer su codificación. El campo "Contada también como Categoría" permite indicar que categorías se replican, para excluirlas de requerirse en conteos (ver ???). Por ejemplo toda ejecución extrajudicial por persecución política (A10) también es un Homicidio Intencional a Persona Protegida (D701) por lo que en el registro A10 de la tabla Categoría el campo "Contada también como Categoría" debe ser 701.

* En la tabla Clase tenga en cuenta que no es posible actualizar el municipio ---porque hace parte de la llave primaria. Si le resulta indispensable modificarlo, elimine primero el registro y añado uno nuevo con los datos corregidos.

* La tabla Presuntos Responsables describe una jerarquía de estructuras, por ejemplo Paramilitares incluye AUC, ACCU, AUTODEFENSAS DEL CASANARE, etc; como puede visualizar al ingresar a esta tabla básica.

* Al ingresar o editar un presunto responsable se debe especificar si es subestructura de otro presunto responsable. En el marco conceptual por defecto los presuntos responsable que no son subestructura son: POLO ESTATAL, POLO INSURGENTE, OTROS y SIN INFORMACIÓN. Los demás presuntos responsables se clasifican como subestructuras de estos o de otros que a su vez descienden de estos. No deben generarse ciclos al especificar subestructuras --por ejemplo que un presunto responsable A sea subestructura de B y B

### Usuarios {#usuarios}

Esta opción del menú presenta el listado de usuarios de la base (como se presenta en la figura)

![Usuarios](https://github.com/BlancaInesAcosta/sivel2_mujeresindigenas_doc/blob/master/usuario.png?raw=true)

Podrá añadir nuevos usuarios y sus contraseñas (como se presenta en la siguiente figura), o cambiar datos, rol y contraseñas de usuarios ya existentes. También puede desbloquear un usuario que haya dado su clave errada más de 5 veces consecutivas, para esto deje en blanco los campos Intentos fallidos, Testigo para desbloquear y Hora del Bloqueo.

Cuando un usuario deje de laborar con la organización es recomendable dejar la cuenta --pues tiene un historial asociado-- pero deshabilitarla poniendo una fecha de deshabilitación.

![Nuevo Usuario](https://github.com/BlancaInesAcosta/sivel2_mujeresindigenas_doc/blob/master/nuevo_usuario.png?raw=true)


