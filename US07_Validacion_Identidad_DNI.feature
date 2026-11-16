# language: es
Característica: US07 - Validación única de identidad con DNI/RENIEC
  Como comerciante local
  Quiero validar mi identidad por única vez ingresando mi número de DNI contra RENIEC
  Para que mis reclamos tengan validez formal sin acudir presencialmente al municipio

  # Épica 02 - Clasificación con IA y Validación de Identidad con DNI

  Escenario: El comerciante valida su cuenta por única vez con un número de DNI válido
    Dado que el comerciante abre por primera vez la pantalla de registro en MiCalle
    Cuando el comerciante ingresa sus 8 dígitos de DNI junto con su dígito verificador
    Y el comerciante presiona el botón "Validar con RENIEC"
    Entonces el sistema comprueba la existencia del documento en el padrón de RENIEC
    Y el sistema activa de forma permanente la cuenta verificada del comerciante

  Escenario: El sistema rechaza un número de DNI inexistente durante el registro
    Dado que el ciudadano se encuentra en la pantalla "Validación de Identidad"
    Cuando el ciudadano introduce un número de 8 dígitos que no figura en RENIEC
    Y el ciudadano presiona el botón "Validar con RENIEC"
    Entonces el sistema muestra el mensaje "El DNI ingresado no es válido"
    Y el sistema mantiene deshabilitada la opción de emitir reportes
