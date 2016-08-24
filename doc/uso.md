
# Uso  {#uso}

**Logros**

* Puede iniciar una sesión y distinguir posibilidad de uso según el rol y según la 
organización.

* Puede buscar casos por código y examinarlos.

* Puede actualizar información de un caso o agregar casos nuevos

* Puede eliminar un caso

SIVeL2 es una aplicación web por lo que se usa con un navegador que soporte 
Javascript. En el momento de este escrito, por economía, seguridad y velocidad 
sugerimos [Chromium](https://www.google.com/chrome/browser/desktop/index.html). 
En cuanto a sistema operativo, como los virus evidencian potenciales huecos de 
seguridad que pueden hacer perder los esfuerzos de seguridad de SIVeL2, 
recomendamos emplearlo desde computadores con OpenBSD/adJ o en su defecto Linux.

Hemos procurado que la operación de SIVeL2 sea simple, basta que tenga en cuenta 
generalidades de la interacción con su navegador por ejemplo:

* Pestañas
 Son los cuadritos que empiezan la pagina tales como Datos básicos, Fuentes, Datos de la víctima, Eventos de violencia, anexos, etiquetas y al pulsar sobre ellos cambian de color y despliegan los campos que correspoonden.
 ![Pestañas](img/Captura%20de%20pantalla%20de%202016-08-22%2019-46-02.png?raw=true)

* Campos
 Son cada uno de los espacios para completar información del caso por ejemplo en datos básicos: fecha de documentación, documentado por, organización, etc.  
 ![Campos](img/Captura%20de%20pantalla%20de%202016-08-22%2019-58-53.png)

* Botones 
Al colocar el mouse sobre ellos aparece una manita y significa que hay un enlace y al pulsar sobre ellos 
podemos guardar informacion, crear o eliminar nuevos campos de acuerdo al botón y u función. 
![](https://github.com/BlancaInesAcosta/Ejercicios/blob/master/Captura%20de%20pantalla%20de%202016-08-22%2019-55-05.png)

* Los cuadros de selección única son desplegables y sólo permiten elegir una opción.
 
![Cuadro de Selección Unica](img/seleccion_unica.png)

* Los cuadros de selección múltiple permiten seleccionar/deseleccionar varias 
opciones. Para hacerlo presione la tecla **Control** mientras pulsa el botón 
izquierdo del ratón.

![Cuadro de Selección Múltiple](img/selmultiple.png)

* En cuadros de selección podrá comenzar a escribir la palabra con la que comienza 
la opción que desea elegir.

### Inicio de una sesión y autenticación {#inicio_de_una_sesion_y_autenticacion}

Desde un computador seguro (preferiblemente con OpenBSD o Ubuntu) ingrese a su 
navegador y en la barra de direcciones digite: 
<https://defensor.info/mujeresindigenas/sivel2/>

![Autenticación](img/autenticacion.png)

![Aviso](img/aviso.png)	
**Aviso**

* Note que el URL comienza con *https* es decir se transmite información del servidor 
a su computador con el protocolo del web típico (HTTP) pero con cifrado fuerte SSL. 
Este cifrado requiere que el servidor web tenga un certificado (como efectivamente
ocurre en el caso de defensor.info).

Para iniciar una sesión debe ingresar su nombre de usuario y su clave (que debió 
ser creada por un usuario con rol administrador).

![Aviso](img/aviso.png)	
**Aviso**

* SIVeL2 no almacena su clave directamente sino una especie de huella digital de la 
misma (condensado bcrypt). Por esto en el caso de SIVeL puede emplear la clave que 
prefiera con la confianza que no podrá ser conocida por administradores que tengan acceso a la base. 
Se recomienda que tenga números, letras y caracteres especiales. 
Es conveniente cambiarla periódicamente, puede hacerlo desde Administración->Clave.
Si otros sitios donde emplea claves no le garantizan esto mismo, por favor emplee una
clave diferente.

Una vez autenticado verá el menú principal.

![Menu Principal](img/menu_principal.png)

Dependiendo del rol de su usuario (ver Sección 2, “Recurso Humano”) tendrá o no 
tendrá acceso a las opciones del menú: Por ejemplo una persona con rol analista no 
tendrá acceso al menú Administración->Usuarios. --que si puede ser usado por
quien tenga rol administrador o administrador de oficina.


