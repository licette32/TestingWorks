// Función para verificar si los lados forman un triángulo válido
function esTrianguloValido(a, b, c) {
    // Verifica la desigualdad triangular y que todos los lados sean positivos
    return (a + b > c) && (a + c > b) && (b + c > a) && (a > 0) && (b > 0) && (c > 0);
}

// Función principal que determina el tipo de triángulo
function determinarTriangulo(a, b, c) {
    if (!esTrianguloValido(a, b, c)) {
        return 0;  // No es un triángulo válido
    }
    
    if (a === b && b === c) {
        return 3;  // Equilátero
    } else if (a === b || a === c || b === c) {
        return 1;  // Isósceles
    } else {
        return 2;  // Escaleno
    }
}

// Función de test que verifica los casos
function test() {
    // Casos de prueba para triángulos válidos
    const testCases = [
        [2, 2, 2, 3],  // Equilátero
        [3, 3, 4, 1],   // Isósceles
        [3, 4, 5, 2],   // Escaleno
        [5, 5, 5, 3],   // Equilátero
        [4, 4, 6, 1],   // Isósceles
        [7, 8, 9, 2]    // Escaleno
    ];
    
    // Casos de prueba para triángulos inválidos
    const invalidCases = [
        [1, 2, 3, 0],   // No cumple desigualdad triangular (1+2=3)
        [0, 1, 1, 0],    // Lado cero
        [-1, 2, 2, 0],   // Lado negativo
        [1, 1, 10, 0]    // 1+1 < 10
    ];
    
    // Probar casos válidos
    for (const testCase of testCases) {
        const result = determinarTriangulo(testCase[0], testCase[1], testCase[2]);
        if (result !== testCase[3]) {
            console.error(`ERROR con (${testCase[0]}, ${testCase[1]}, ${testCase[2]}): esperado ${testCase[3]}, obtenido ${result}`);
            return 0;
        }
    }
    
    // Probar casos inválidos
    for (const invalidCase of invalidCases) {
        const result = determinarTriangulo(invalidCase[0], invalidCase[1], invalidCase[2]);
        if (result !== invalidCase[3]) {
            console.error(`ERROR con caso inválido (${invalidCase[0]}, ${invalidCase[1]}, ${invalidCase[2]}): esperado ${invalidCase[3]}, obtenido ${result}`);
            return 0;
        }
    }
    
    // Todos los tests pasaron
    return 1;
}

// Ejecutar el test
const resultadoTest = test();
console.log(`El test ${resultadoTest === 1 ? 'pasó' : 'falló'}`);