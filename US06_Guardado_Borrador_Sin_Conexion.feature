Feature: Guardado temporal de borrador sin conexión
  Como ciudadano joven
  Quiero guardar mi reporte como borrador local si pierdo conexión de datos móviles en la calle
  Para que se envíe automáticamente apenas recupere la señal

  Scenario: La aplicación almacena el reporte como borrador local ante la falta de internet
    Given que el ciudadano ha capturado la fotografía y las coordenadas GPS en la aplicación
    And el teléfono móvil pierde la conexión de datos móviles en ese instante
    When el ciudadano presiona el botón "Enviar reporte"
    Then la aplicación guarda localmente la fotografía, las coordenadas GPS y la categoría en la bandeja de borradores
    And la aplicación muestra el aviso "Sin conexión: tu reporte se enviará automáticamente al recuperar señal"

  Scenario: La aplicación sincroniza automáticamente el borrador guardado al detectar conexión
    Given que el ciudadano tiene un reporte pendiente en la bandeja local de borradores
    When el dispositivo móvil restablece la conexión a internet
    Then la aplicación transmite automáticamente el reporte hacia el servidor de MiCalle
    And la aplicación notifica al ciudadano el código único de ticket generado


    