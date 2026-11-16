Feature: Cálculo automático de severidad con IA
  Como vecina de zona deteriorada
  Quiero que el motor de visión computacional asigne automáticamente el nivel de gravedad del daño en mi foto
  Para que se prioricen los huecos y buzones peligrosos de mi calle

  Scenario: El sistema asigna severidad alta a un desperfecto de grave riesgo peatonal
    Given que la vecina ha tomado la fotografía de un buzón sin tapa o un bache profundo en su cuadra
    When el motor de visión computacional evalúa las dimensiones y el riesgo del daño en la imagen
    Then el sistema asigna automáticamente el nivel "Severidad Alta" al ticket
    And el sistema muestra un distintivo de alerta roja en la ficha del reporte

  Scenario: El sistema clasifica como severidad leve o media un desgaste superficial de vereda
    Given que el ciudadano adjunta la fotografía de una grieta menor que no bloquea el paso peatonal
    When el motor de visión computacional analiza la imagen del reporte
    Then el sistema etiqueta la incidencia con el nivel "Severidad Media" o "Severidad Baja" según corresponda
    And el sistema informa al ciudadano el nivel de urgencia asignado

    