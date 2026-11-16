Feature: Consulta de nivel de reputación cívica vecinal
  Como ciudadano registrado con DNI
  Quiero visualizar en mi perfil mi puntaje de reputación cívica acumulado por emitir reportes verídicos
  Para que mis denuncias mantengan credibilidad en la plataforma

  Scenario: El ciudadano consulta su puntaje de reputación cívica incrementado tras un reporte válido
    Given que el ciudadano cuenta con un reporte verificado que ha pasado al estado "En Evaluación"
    When el ciudadano ingresa a la sección "Mi Perfil Cívico" de la aplicación
    Then el sistema muestra el puntaje actual de reputación cívica sumando los puntos obtenidos
    And el sistema muestra la insignia de confiabilidad activa de su cuenta

  Scenario: El sistema descuenta puntos de reputación ante intentos reiterados de reportes falsos
    Given que una cuenta ciudadana acumula tres rechazos consecutivos por fotografías falsas o spam
    When el sistema actualiza el cálculo de reputación cívica del usuario
    Then la plataforma reduce el puntaje de reputación de la cuenta
    And la aplicación muestra una advertencia de suspensión temporal en caso de reincidencia

    