%%R
# Función para determinar el tipo de triángulo dado sus lados
determinarTriangulo <- function(a, b, c) {
  # Retorna:
  #  -1 --> No forman un triángulo válido
  #   1 --> Isósceles
  #   2 --> Escaleno
  #   3 --> Equilátero
  
  # Validar si los lados forman un triángulo real
  if (a + b <= c || a + c <= b || b + c <= a) {
    return(-1) # No es un triángulo válido
  }
  
  # Clasificar el tipo de triángulo
  if (a == b && b == c) {
    return(3) # Equilátero
  } else if (a == b || a == c || b == c) {
    return(1) # Isósceles
  } else {
    return(2) # Escaleno
  }
}

# --- Función de test ---
test <- function() {
  # Función de prueba para determinarTriangulo
  
  casos_prueba <- list(
    c(5, 9, 5),   # Equilátero
    c(6, 2, 6),   # Isósceles
    c(6, 7, 8),   # Escaleno
    c(1, 1, 6),   # No forman triángulo
    c(2, 2, 3),   # Isósceles
    c(10, 1, 1)   # No forman triángulo
  )
  
  resultados_esperados <- c(3, 1, 2, -1, 1, -1)
  
  todo_ok <- TRUE
  
  for (i in 1:length(casos_prueba)) {
    lados <- casos_prueba[[i]]
    resultado <- determinarTriangulo(lados[1], lados[2], lados[3])
    if (resultado == resultados_esperados[i]) {
      cat(sprintf("✅ Caso %d: (%d, %d, %d) -> Correcto\n", i, lados[1], lados[2], lados[3]))
    } else {
      cat(sprintf("❌ Caso %d: (%d, %d, %d) -> Error: esperado %d, obtenido %d\n",
                  i, lados[1], lados[2], lados[3], resultados_esperados[i], resultado))
      todo_ok <- FALSE
    }
  }
  
  if (todo_ok) {
    cat("\n🎉 Todos los casos de prueba pasaron correctamente.\n")
    return(1)
  } else {
    cat("\n⚠️ Hubo errores en algunas pruebas.\n")
    return(0)
  }
}

# --- Ejecutar pruebas ---
test()
