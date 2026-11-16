Feature: Previsualización del resumen antes del envío
  Como vecina de zona deteriorada
  Quiero revisar en una pantalla previa la foto, ubicación GPS y categoría detectada antes de confirmar el envío
  Para que esté segura de que los datos son exactos

  Scenario: La vecina visualiza el resumen consolidado de su reporte antes de enviarlo
    Given que la vecina ha completado la fotografía, la ubicación GPS y la categoría del desperfecto
    When la vecina presiona el botón "Revisar reporte"
    Then la aplicación muestra una pantalla de resumen con la foto, el mapa GPS, la categoría y la severidad
    And la aplicación habilita el botón "Confirmar envío"

  Scenario: La vecina regresa desde la previsualización para editar un dato del reporte
    Given que la vecina se encuentra en la pantalla de resumen previo al envío
    When la vecina pulsa el botón "Editar datos"
    Then la aplicación retorna al formulario de edición conservando la foto y los campos ya ingresados

    