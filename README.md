# SIVeL 2 para Mujeres Indigenas



[![Revisado por Hound](https://img.shields.io/badge/Reviewed_by-Hound-8E64B0.svg)](https://houndci.com) Pruebas y seguridad:[![Estado Construcción](https://gitlab.com/pasosdeJesus/sivel2_mujeresindigenas/badges/main/pipeline.svg)](https://gitlab.com/pasosdeJesus/sivel2_mujeresindigenas/-/pipelines?page=1&scope=all&ref=main) [![Clima del Código](https://codeclimate.com/github/pasosdeJesus/sivel2_mujeresindigenas/badges/gpa.svg)](https://codeclimate.com/github/pasosdeJesus/sivel2_mujeresindigenas) [![Cobertura de Pruebas](https://codeclimate.com/github/pasosdeJesus/sivel2_mujeresindigenas/badges/coverage.svg)](https://codeclimate.com/github/pasosdeJesus/sivel2_mujeresindigenas)



### Requerimientos
* Ruby version >= 2.2
* PostgreSQL >= 9.4 con extension unaccent
* Recomendado sobre adJ 5.7 (que incluye todos los componentes mencionados). 
* La cuenta desde la cual se ejecute el servidor o las pruebas debe poder abrir 2048 archivos --en adJ se establece en la clase del usuario que ejecuta en /etc/login.conf con :openfiles-cur=2048:


### Uso
Aplican las mismas instrucciones de SIVeL 2
https://github.com/pasosdeJesus/sivel2

### Arquitectura
Se usa junto con msip, sivel2_gen y sivel2_sjr ver
https://github.com/pasosdeJesus/msip
https://github.com/pasosdeJesus/sivel2_gen
https://github.com/pasosdeJesus/sivel2_sjr
