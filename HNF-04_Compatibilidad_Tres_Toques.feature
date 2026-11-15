Feature: Compatibilidad Android/iOS y envío de reporte en máximo tres toques
  Como usuario de smartphone de entre 18 y 65 años
  Quiero ejecutar el flujo de captura y envío del reporte en los sistemas operativos Android e iOS en un máximo de tres toques en pantalla
  Para que pueda reportar averías desde cualquier lugar de forma rápida y sencilla

  Scenario: El ciudadano autenticado envía un reporte completo realizando tres toques en pantalla
    Given que el ciudadano cuenta con una sesión activa en la pantalla principal de MiCalle
    And el dispositivo móvil tiene activados los permisos de cámara y ubicación GPS
    When el ciudadano pulsa el botón "Reportar daño" en el primer toque
    And el ciudadano captura la fotografía en el segundo toque
    And el ciudadano presiona el botón "Confirmar envío" en el tercer toque
    Then el sistema registra el reporte completo con ubicación GPS y severidad calculada sin solicitar pasos adicionales

  Scenario: La interfaz móvil adapta sus controles visuales en dispositivos Android e iOS
    Given que el ciudadano ha instalado la aplicación MiCalle en un teléfono con sistema operativo Android o iOS
    When el ciudadano abre la pantalla de captura de incidencias
    Then la aplicación ajusta automáticamente la distribución de botones al tamaño de la pantalla del dispositivo
    And la aplicación muestra textos de alto contraste legibles para usuarios adultos de hasta 65 años

    