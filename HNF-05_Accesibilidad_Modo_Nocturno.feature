Feature: Accesibilidad visual con modo nocturno y textos legibles en español
  Como vecina frecuente de zonas con infraestructura deteriorada
  Quiero que la interfaz de la aplicación cuente con modo nocturno y textos de alto contraste en español
  Para que pueda leer la pantalla sin deslumbramiento al reportar luminarias apagadas de noche

  Scenario: La vecina activa el modo nocturno de la interfaz para reportar en calles sin iluminación
    Given que la vecina se encuentra utilizando la aplicación MiCalle en horario nocturno
    When la vecina activa el interruptor "Modo Nocturno" en la barra superior de la aplicación
    Then la interfaz cambia inmediatamente a un fondo oscuro con textos claros de alto contraste
    And la pantalla reduce el brillo visual facilitando la captura del reporte en la vía pública

  Scenario: La aplicación presenta etiquetas en español con tamaño de fuente legible para adultos
    Given que un ciudadano adulto de entre 29 y 65 años abre cualquiera de las pantallas de MiCalle
    When el sistema carga los formularios y botones de navegación
    Then la interfaz muestra todas las instrucciones en idioma español con un tamaño mínimo de 16 píxeles
    And cada botón de acción incluye un ícono visual junto a su texto descriptivo

    