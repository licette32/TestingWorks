#include <stdio.h>

int suma(int nro1, int nro2);
int test();

// Se implementa una función de suma y un conjunto de pruebas unitarias 
// para verificar su correcto funcionamiento.
int main() {
    int r = test();
    
    if (r != 0)
    {
        printf("Hubo un bug");
    }
}
int suma(int nro1, int nro2) {
    int resultado = nro1 +nro2;
    return resultado;
}

int test () {
    int comoSalio = 0;
    //devuelve 0 si salió todo bien
    //devuelve distinto de 0 si encontró un bug

    // Caso 1: los dos números son pasitivos
    int res = suma(3,5);
    if(res != 8) {
        // hay un bug
        comoSalio = 1;
    }

    // Caso 2: Los dos números son negativos
    res = suma(-3,5);
    if(res != -8) {
        // hay un bug
        comoSalio = 1;
    }

    // Caso 3: Uno Negativo y otro positivo
    res = suma(-3,5);
    if(res != 2) {
        //hay un bug
        comoSalio = 1;
    }

    // Caso 4: Uno positivo y otro negativo
    res = suma(3,-5);
    if(res != -2) {
        //hay un bug
        comoSalio = 1;
    }

    // Caso 5: Los dos ceros
    res = suma(0,0);
    if(res != 0) {
        //hay un bug
        comoSalio = 1;
    }

    // Caso 6: Uno cero y otro positivo
    res = suma(0,5);
    if(res != 5) {
        //hay un bug
        comoSalio = 1;
    }

    // Caso 7: Uno positivo y uno cero
    res = suma(5,0);
    if(res != 0) {
        // hay un bug
        comoSalio = 1;
    }

    // Caso 8: Uno cero y otro negativo
    res = suma(0, -8);
    if(res != -8) {
        //hay un bug
        comoSalio = 1;
    }

    // Caso 9: Uno negativo y otro cero
    res = suma(-8,0);
    if(res != -8) {
        //hay un bug
        comoSalio = 1;
    }

    return comoSalio;
    // devuelve 0 si salió todo bien
}