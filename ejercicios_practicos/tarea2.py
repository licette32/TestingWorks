def determinarTriangulo(a, b, c):
    # Validación de triángulo
    if a + b <= c or a + c <= b or b + c <= a:
        return -1  # No forman un triángulo

    # Clasificación
    if a == b == c:
        return 3  # Equilátero
    elif a == b or b == c or a == c:
        return 1  # Isósceles
    else:
        return 2  # Escaleno

def test():
    # Casos de prueba
    pruebas = [
        (3, 3, 3, 3),    # Equilátero
        (3, 4, 3, 1),    # Isósceles
        (3, 4, 5, 2),    # Escaleno
        (1, 2, 3, -1),   # No triángulo
        (10, 2, 2, -1),  # No triángulo
    ]
    
    for a, b, c, esperado in pruebas:
        resultado = determinarTriangulo(a, b, c)
        if resultado != esperado:
            print(f"Error en la prueba ({a}, {b}, {c}): esperado {esperado}, obtenido {resultado}")
            return 0  # Error en alguna prueba
    return 1  # Todo OK

# Ejecutamos
print("Resultado del test:", test())
