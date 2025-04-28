%%R
# Función para determinar el tipo de triángulo
determinar_triangulo <- function(a, b, c) {
  if (a == b && b == c) {
    return(3)  # Equilátero
  } 
  else if (a == b || a == c || b == c) {
    return(1)  # Isósceles
  } 
  else {
    return(2)  # Escaleno
  }
}

# Función de prueba para verificar la implementación
test_triangulo <- function() {
  # Definimos nuestros casos de prueba
  casos_prueba <- list(
    list(a = 2, b = 2, c = 2, esperado = 3),               # Equilátero
    list(a = 3, b = 3, c = 4, esperado = 1),               # Isósceles
    list(a = 3, b = 4, c = 5, esperado = 2),               # Escaleno
    list(a = 5, b = 5, c = 5, esperado = 3),               # Equilátero
    list(a = 4, b = 4, c = 6, esperado = 1),               # Isósceles
    list(a = 7, b = 8, c = 9, esperado = 2)                # Escaleno
  )
  
  # Probamos cada uno de los casos
  for (caso in casos_prueba) {
    resultado <- determinar_triangulo(caso$a, caso$b, caso$c)
    if (resultado != caso$esperado) {
      cat(sprintf("❌ Error con (%d, %d, %d): esperado %d, obtenido %d\n",
                 caso$a, caso$b, caso$c, caso$esperado, resultado))
      return(FALSE)
    }
  }
  
  cat("✅ Todos los tests pasaron correctamente\n")
  return(TRUE)
}

# Ejecutamos los tests
test_triangulo()