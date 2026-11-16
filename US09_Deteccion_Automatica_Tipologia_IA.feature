# language: es
Característica: US09 - Detección automática de tipología con IA
  Como ciudadano joven
  Quiero que el motor de Inteligencia Artificial reconozca automáticamente el tipo de avería en mi fotografía
  Para que el llenado del reporte sea más rápido y sencillo

  # Épica 02 - Clasificación con IA y Validación de Identidad con DNI

  Escenario: El motor de inteligencia artificial identifica automáticamente el tipo de daño en la foto
    Dado que el ciudadano ha capturado una fotografía nítida de una avería urbana desde la aplicación
    Cuando el sistema procesa la imagen mediante el modelo de visión computacional
    Entonces la plataforma selecciona automáticamente la categoría detectada entre bache, luminaria, semáforo, fuga o buzón
    Y la plataforma muestra en pantalla la etiqueta de la categoría reconocida

  Escenario: El sistema solicita confirmación cuando la imagen presenta baja confianza de clasificación
    Dado que el ciudadano adjunta una fotografía tomada en condiciones de poca iluminación
    Cuando el modelo de visión computacional obtiene un porcentaje de certeza inferior al 70%
    Entonces la aplicación muestra las dos categorías más probables en pantalla
    Y la aplicación solicita al ciudadano tocar una opción para confirmar
