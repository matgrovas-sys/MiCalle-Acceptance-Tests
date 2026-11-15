Feature: Procesamiento y registro de reporte ciudadano en menos de 60 segundos
  Como ciudadano joven que se desplaza por el distrito
  Quiero que el procesamiento integral del reporte fotográfico geolocalizado concluya en menos de 60 segundos
  Para que pueda registrar incidencias en la vía pública sin retrasar mis horarios de estudio o trabajo

  Scenario: La plataforma procesa un reporte fotográfico geolocalizado dentro del límite de 60 segundos
    Given que el ciudadano cuenta con una sesión autenticada en la aplicación móvil MiCalle
    And el teléfono móvil dispone de conexión activa a internet
    When el ciudadano adjunta la fotografía del desperfecto con coordenadas GPS automáticas
    And el ciudadano presiona el botón "Enviar reporte"
    Then el sistema completa la clasificación por inteligencia artificial en un tiempo menor a 5 segundos
    And el sistema muestra en pantalla el código único de ticket antes de cumplirse 60 segundos desde el inicio del registro

  Scenario: La aplicación móvil comprime una fotografía pesada antes del envío al servidor
    Given que el ciudadano ha capturado desde la cámara de la aplicación una fotografía con un peso superior a 5 MB
    When el ciudadano ordena "Enviar reporte"
    Then la aplicación reduce automáticamente el tamaño del archivo de imagen conservando su nitidez visual
    And el sistema registra la incidencia completa en menos de 60 segundos

    