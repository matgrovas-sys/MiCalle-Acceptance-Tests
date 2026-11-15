Feature: Cifrado de identidad DNI y anonimato público del vecino
  Como ciudadano registrado con DNI
  Quiero que mis datos personales viajen cifrados y mi nombre se mantenga oculto en todas las vistas públicas de la aplicación
  Para que pueda respaldar la veracidad de mi reclamo sin exponer mi identidad ante otros vecinos

  Scenario: El mapa público oculta los datos personales del ciudadano que emitió el reporte
    Given que un vecino autenticado con su DNI ha registrado un ticket de avería urbana en su cuadra
    When otro usuario de la aplicación abre el detalle de ese ticket en el mapa distrital
    Then el sistema muestra únicamente el código del ticket, la fotografía del daño, la severidad y el estado de atención
    And el sistema mantiene ocultos el nombre completo y el número de DNI del vecino reportante

  Scenario: El sistema cifra el número de DNI durante el registro inicial de la cuenta ciudadana
    Given que el ciudadano no registrado se encuentra en la pantalla "Validación de Identidad" de la aplicación
    And el ciudadano marca la casilla de aceptación del aviso de privacidad
    When el ciudadano ingresa sus 8 dígitos de DNI en el campo correspondiente
    And el ciudadano presiona el botón "Validar identidad"
    Then el sistema transmite la solicitud hacia el servicio RENIEC mediante el protocolo seguro TLS 1.3
    And el sistema almacena el identificador del documento de forma enmascarada en la base de datos

    