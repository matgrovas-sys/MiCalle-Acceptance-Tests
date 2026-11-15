Feature: Disponibilidad continua 24/7 con SLA del 99.5% para emergencias
  Como vecina frecuente de zonas deterioradas
  Quiero que la aplicación MiCalle esté disponible el 99.5% del tiempo las 24 horas del día
  Para que pueda reportar luminarias apagadas en horario nocturno o emergencias viales en época de lluvias

  Scenario: El vecino registra un reporte de alumbrado público durante el horario nocturno
    Given que la plataforma MiCalle opera en producción bajo un acuerdo de nivel de servicio del 99.5% de tiempo activo
    And el vecino se encuentra transitando por su distrito en horario nocturno
    When el vecino abre la aplicación móvil para reportar una luminaria apagada
    Then el sistema habilita de inmediato los módulos de captura fotográfica, lectura GPS y clasificación automática
    And el sistema registra el ticket sin interrupciones de servicio

  Scenario: La infraestructura en la nube soporta un pico concurrente de reportes durante lluvias intensas
    Given que el servidor recibe múltiples solicitudes simultáneas de vecinos reportando baches y fugas de agua
    When el tráfico concurrente supera el umbral promedio de peticiones por minuto del distrito
    Then el balanceador de carga asigna instancias adicionales de procesamiento de manera automática
    And el sistema mantiene el tiempo de respuesta de los servicios por debajo de 3 segundos sin caídas

    