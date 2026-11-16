Feature: Generación de código único de confirmación
  Como comerciante local
  Quiero recibir un código único de ticket inmediatamente después de enviar mi reporte
  Para que cuente con un comprobante formal de recepción municipal

  Scenario: El sistema entrega un comprobante con código único al concluir el envío del reporte
    Given que el comerciante se encuentra en la pantalla de confirmación de su reporte validado
    When el comerciante presiona el botón "Confirmar envío"
    Then el sistema registra la incidencia con el estado inicial "Registrado"
    And el sistema muestra en pantalla una tarjeta de comprobante con el código único de ticket, fecha y hora

  Scenario: El comerciante copia el código de su ticket desde la pantalla de confirmación
    Given que el sistema muestra en pantalla el comprobante con el código único del ticket generado
    When el comerciante pulsa el botón "Copiar código"
    Then la aplicación copia el identificador alfanumérico en el portapapeles del teléfono
    And la aplicación muestra el mensaje "Código copiado exitosamente"


    