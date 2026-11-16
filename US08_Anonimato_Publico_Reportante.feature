# language: es
Característica: US08 - Anonimato público del ciudadano reportante
  Como vecina de zona deteriorada
  Quiero que mi nombre se mantenga oculto frente a otros usuarios al emitir un reporte
  Para que mi privacidad quede protegida ante terceros

  # Épica 02 - Clasificación con IA y Validación de Identidad con DNI

  Escenario: La ficha pública del reporte muestra la incidencia como vecino verificado anónimo
    Dado que la vecina ha emitido un reporte de avería con su cuenta validada con DNI
    Cuando otro ciudadano selecciona ese reporte dentro del mapa público del distrito
    Entonces la aplicación muestra la etiqueta "Reportado por: Vecino Verificado"
    Y la aplicación oculta los nombres, apellidos y número de DNI de la vecina

  Escenario: La pantalla de registro presenta el aviso de anonimato antes de validar el DNI
    Dado que la vecina ingresa por primera vez a la pantalla de registro con DNI
    Cuando la aplicación carga el formulario de verificación de identidad
    Entonces el sistema despliega un recuadro informativo indicando que su nombre jamás será visible para otros vecinos
