# --- Función determinarTriangulo mejorada con validación de triángulo ---
def determinarTriangulo(a, b, c):
    """
    Determina el tipo de triángulo dado sus lados a, b y c.
    Retornar:
        -1 --> No forman un triángulo válido
         1 --> Isósceles
         2 --> Escaleno
         3 --> Equilátero
    """
    # Validar si es un triángulo real
    if (a + b <= c) or (a + c <= b) or (b + c <= a):
        return -1  # No es un triángulo válido

    # Clasificar el tipo de triángulo
    if a == b == c:
        return 3  # Equilátero
    elif a == b or a == c or b == c:
        return 1  # Isósceles
    else:
        return 2  # Escaleno

# --- Función de test mejorada ---
def test():
    """
    Función de prueba para determinarTriangulo.
    Imprime el resultado de cada prueba y un resumen final.
    """
    # Casos de prueba
    casos_prueba = [
        (5, 5, 5),   # Equilátero
        (6, 2, 6),   # Isósceles
        (6, 7, 8),   # Escaleno
        (1, 1, 3),   # No forma triángulo
        (2, 2, 3),   # Isósceles
        (10, 1, 1)   # No forma triángulo
    ]
    
    resultados_esperados = [3, 1, 2, -1, 1, -1]
    
    todo_ok = True

    for i in range(len(casos_prueba)):
        a, b, c = casos_prueba[i]
        resultado = determinarTriangulo(a, b, c)
        if resultado == resultados_esperados[i]:
            print(f"✅ Caso {i+1}: ({a}, {b}, {c}) -> Correcto")
        else:
            print(f"❌ Caso {i+1}: ({a}, {b}, {c}) -> Error: esperado {resultados_esperados[i]}, obtenido {resultado}")
            todo_ok = False

    # Resumen final
    if todo_ok:
        print("\n🎉 Todos los casos de prueba pasaron correctamente.")
        return 1
    else:
        print("\n⚠️ Hubo errores en algunas pruebas.")
        return 0

# --- Ejecutamos ---
test()
