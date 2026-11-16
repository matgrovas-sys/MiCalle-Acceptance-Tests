Feature: Alerta preventiva IA ante foto borrosa o inválida
  Como ciudadano joven
  Quiero que la aplicación me avise al instante si mi fotografía está borrosa o no muestra un daño vial válido
  Para que pueda tomar otra foto clara antes de enviar el reporte

  Scenario: La aplicación rechaza una fotografía que no corresponde a infraestructura pública
    Given que el ciudadano ha tomado una fotografía desde el módulo de reporte de MiCalle
    When el modelo de visión computacional detecta que la imagen no muestra ningún elemento de la vía pública
    Then la aplicación bloquea el avance hacia el envío del reporte
    And la aplicación muestra el mensaje "La imagen no muestra una avería urbana, por favor toma una foto válida"

  Scenario: La aplicación solicita repetir la captura cuando detecta una imagen desenfocada
    Given que el ciudadano captura una fotografía en movimiento con alto nivel de desenfoque
    When el verificador de calidad visual evalúa la nitidez de la imagen
    Then la aplicación muestra la alerta "Foto borrosa detectada"
    And la aplicación habilita el botón directo para capturar una nueva fotografía

    