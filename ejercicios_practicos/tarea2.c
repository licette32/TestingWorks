#include <iostream>
using namespace std;

// Función que determina el tipo de triángulo
int determinarTriangulo(int a, int b, int c) {
    // Verificar si los lados forman un triángulo
    if (a + b <= c || a + c <= b || b + c <= a) {
        return -1; // No forman un triángulo
    }

    // Clasificar el triángulo
    if (a == b && b == c) {
        return 3; // Equilátero
    } else if (a == b || b == c || a == c) {
        return 1; // Isósceles
    } else {
        return 2; // Escaleno
    }
}

// Función de testeo
int test() {
    // Cada prueba: lado1, lado2, lado3, resultado esperado
    struct Prueba {
        int a, b, c, esperado;
    };

    Prueba pruebas[] = {
        {3, 3, 3, 3},    // Equilátero
        {3, 4, 3, 1},    // Isósceles
        {3, 4, 5, 2},    // Escaleno
        {1, 2, 3, -1},   // No triángulo
        {10, 2, 2, -1}   // No triángulo
    };

    int numPruebas = sizeof(pruebas) / sizeof(pruebas[0]);

    for (int i = 0; i < numPruebas; ++i) {
        int resultado = determinarTriangulo(pruebas[i].a, pruebas[i].b, pruebas[i].c);
        if (resultado != pruebas[i].esperado) {
            cout << "Error en la prueba (" 
                 << pruebas[i].a << ", " 
                 << pruebas[i].b << ", " 
                 << pruebas[i].c << "): "
                 << "esperado " << pruebas[i].esperado 
                 << ", obtenido " << resultado << endl;
            return 0; // Hay un error
        }
    }
    return 1; // Todas las pruebas OK
}

int main() {
    int resultadoTest = test();
    cout << "Resultado del test: " << resultadoTest << endl;
    return 0;
}
