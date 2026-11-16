Feature: Redacción de descripción breve del desperfecto
  Como comerciante local
  Quiero redactar una nota descriptiva breve sobre el daño frente a mi local
  Para que se conozca cómo afecta el tránsito peatonal o el acceso de clientes

  Scenario: El comerciante ingresa una nota descriptiva dentro del límite permitido de caracteres
    Given que el comerciante tiene una fotografía adjunta en el formulario de reporte de MiCalle
    When el comerciante escribe un comentario de hasta 200 caracteres en el campo "Descripción breve"
    Then el sistema guarda el texto ingresado como parte del detalle del reporte
    And el sistema actualiza en pantalla el contador de caracteres restantes

  Scenario: El formulario restringe el ingreso de texto que supera el máximo de 200 caracteres
    Given que el comerciante se encuentra escribiendo en el campo "Descripción breve"
    When el texto escrito alcanza el límite máximo de 200 caracteres
    Then la aplicación bloquea la digitación de caracteres adicionales en el campo
    And la aplicación muestra el indicador "200/200 caracteres completados"

    