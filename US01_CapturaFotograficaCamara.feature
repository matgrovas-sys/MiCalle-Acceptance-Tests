Feature: Captura fotográfica desde cámara integrada
  Como ciudadano joven
  Quiero tomar una fotografía del daño directamente desde la cámara integrada en la app
  Para que pueda adjuntar evidencia visual inmediata sin salir de la plataforma

  Scenario: El ciudadano captura una fotografía de la avería desde la cámara de la aplicación
    Given que el ciudadano cuenta con una sesión activa en la aplicación móvil MiCalle
    And el teléfono móvil tiene concedidos los permisos de acceso a la cámara
    When el ciudadano presiona el botón "Tomar foto" dentro del formulario de nuevo reporte
    And el ciudadano captura la imagen del desperfecto en la vía pública
    Then la aplicación adjunta automáticamente la fotografía tomada en la ficha del reporte
    And la aplicación muestra la vista en miniatura de la imagen capturada

  Scenario: El ciudadano repite la toma fotográfica antes de continuar con el registro
    Given que el ciudadano visualiza en pantalla la vista previa de la fotografía recién capturada
    When el ciudadano presiona el botón "Volver a tomar foto"
    Then la aplicación descarta la imagen anterior del formulario temporal
    And la aplicación activa nuevamente el visor de la cámara integrada

    