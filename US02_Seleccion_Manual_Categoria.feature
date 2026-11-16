Feature: Selección manual de categoría de avería
  Como ciudadano joven
  Quiero elegir manualmente el tipo de avería entre bache, luminaria, semáforo, fuga de agua o buzón sin tapa
  Para que quede precisada la categoría cuando lo requiera

  Scenario: El ciudadano selecciona manualmente una categoría del catálogo de averías urbanas
    Given que el ciudadano se encuentra completando los datos de un nuevo reporte en la aplicación
    When el ciudadano despliega el selector "Categoría de avería"
    And el ciudadano elige una opción dentro de las cinco categorías disponibles
    Then el sistema asigna la categoría seleccionada al reporte en curso
    And el sistema resalta el ícono correspondiente a esa tipología en la pantalla

  Scenario: El ciudadano modifica la categoría sugerida antes de enviar el reporte
    Given que el formulario de reporte muestra una categoría preseleccionada en pantalla
    When el ciudadano abre el listado de categorías
    And el ciudadano selecciona una tipología distinta de la lista oficial
    Then el sistema reemplaza el valor anterior por la nueva categoría elegida por el ciudadano

    