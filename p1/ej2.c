#include <stdio.h>
#include <stdlib.h>

// 2. Implemente las siguientes funciones para cadenas de caracteres:


// -----------------------------------------------------------------------------
//  a) int string len(char* str), que retorne la longitud de la cadena str, excluyendo el car ́acter nulo
//  (’\0’).

// string_len_ite: char --> int
// dado un char* retorna la longitud de la cadena apuntada
// version iterativa
int string_len_ite(char* str){
    int len = 0, i = 0;
    while (str[i] != '\0'){
        len++;
        i++;
    }
    return len;
}

// string_len_ite: char --> int
// dado un char* retorna la longitud de la cadena apuntada
// version recursiva
int string_len_rec(char* str){
    if (*str == '\0'){
        return 0;
    }
    return 1 + string_len_rec(str + 1);
}


// int main(){
//     char a[] = "hola";
//     printf("iterativa: %d\n", string_len_ite(a));
//     printf("recursiva: %d\n", string_len_rec(a));
//     return 0;
// }
// ejemplo salida
// iterativa: 4
// recursiva: 4
// -----------------------------------------------------------------------------

// -----------------------------------------------------------------------------
// b) void string reverse(char* str), que invierta la cadena str.

void string_reverse(char* str){
    int largo = string_len_ite(str); //largo de la cadena
    char* copia = malloc(sizeof(char) * (largo + 1)); //pedimos memoria para almacenar el argumento
    for (int i = 0; i < largo; i++){
        copia[i] = str[i]; // en la memoria pedida alojamos cada caracter
    }

    // pisamos cada caracter del argumento original por el ultimo de la copia. del primero al ultimo
    for (int i = largo - 1, j = 0; i >= 0; i--, j++){
        str[j] = copia[i]; 
    } 
    free(copia); // freejota
}

// int main(){
//     char a[] = "hola";
//     printf("%s\n", a);
//     string_reverse(a);
//     printf("%s\n", a);
//     return 0;
// }
// ejemplo de salida
// hola
// aloh
// -----------------------------------------------------------------------------

// -----------------------------------------------------------------------------
// c) int string concat(char* str1, char* str2, int max), que concatene no m ́as de max carac-
// teres de la cadena str2 al final de la cadena str1. El car ́acter inicial de str2 debe sobrescribir

// el car ́acter nulo de str1. La cadena resultante debe terminar con un car ́acter nulo. Retorna el
// n ́umero de caracteres copiados.
// Nota: Si str1 no tiene espacio suficiente para almacenar el resultado, el comportamiento queda
// indefinido.

int string_concat(char* str1, char* str2, int max){
    int str1_len = string_len_ite(str1);
    int str2_len = string_len_ite(str2);

    if (max <= str2_len){
        int temp = 0;
        for (int i = 0; max != 0; i++, max--){
            str1[str1_len + i] = str2[i];
            temp++;
        }
        str1[str1_len + temp] = '\0';
        printf("%s\n", str1);
        return temp;
    } else if (max > str2_len){
        int j = 0;
        while (str2[j] != '\0'){
            str1[str1_len + j] = str2[j];
            j++;
        }
        str1[str1_len + j] = '\0';
        printf("%s\n", str1);
        return j;
    }
}

// int main(){
//     char a[] = "hola", b[] = "hola";
//     char c[] = "hola", d[] = "hola";
//     char e[] = "hola", f[] = "hola";

//     int rta = string_concat(a, b, 2); // holaho
//     int rtaa = string_concat(c, d, 4); // holahola
//     int rtaaa = string_concat(e, f, 6); // holahola
//     printf("menor que max se copiaron:  %d\n", rta);
//     printf("igual que max se copiaron:  %d\n", rtaa);
//     printf("mayor que max se copiaron:  %d\n", rtaaa);

//     return 0;
// }
// // ejemplo de salida
// // holaho
// // holahola
// // holahola
// // menor que max se copiaron:  2
// // igual que max se copiaron:  4
// // mayor que max se copiaron:  4
// -----------------------------------------------------------------------------

// -----------------------------------------------------------------------------
// d) int string compare(char* str1, char* str2), que compare en orden lexicogr ́afico las cadenas
// str1 y str2, y retorne retorne -1 si la primera es menor que la segunda, 0 si son iguales, y 1 si es
// mayor.

int string_compare(char* str1, char* str2){
    int i = 0;
    while ((str1[i] != '\0' && str2[i] != '\0') && (str1[i] == str2[i])){
        i++;
    }

    if (str1[i] < str2[i]){
        return -1;
    } else if (str1[i] > str2[i]){
        return 1;
    } else{
        return 0;
    }
}

// int main(){
//     char p1[] = "caza", p2[] = "casa";
//     char p3[] = "ala", p4[] = "alacran";
//     printf("%d\n", string_compare(p1, p2));
//     printf("%d\n", string_compare(p3, p4));

//     return 0;
// }
// ejemlo salida:
// 1
// -1
// -----------------------------------------------------------------------------

// -----------------------------------------------------------------------------
// e) int string subcadena(char* str1, char* str2), que retorne el  ́ındice de la primera ocurrencia
// de la cadena str2 en la cadena str1. En caso de no ocurrir nunca, retorna −1.

int string_subcadena(char* str1, char* str2){
    int len_str2 = string_len_ite(str2);
    int len_str1 = string_len_ite(str1);

    // Si la subcadena es mas larga, es imposible que este dentro  
    if (len_str1 < len_str2){
        return -1;
    }

    // recorremos str1 hasta que str1[i] == s[i]
    for (int i = 0; i < len_str1 ; i++){
        // si pasa que str1[i] == s[0]
        if (str1[i] == str2[0]){
            int j = 0;
            // s2[2] == s1[0] SI --> s2[3] == s1[1] --> NO --> s2[4] == s1[0] SI --> ...
            while (j < len_str2 && str1[j+i] == str2[j]){
                j++;
            }
            // si j = len_str2 significa que hubo match con todos los caracteres
            if (j == len_str2){
                return i;
            }
        }
    }
    // si no se encontro retornamos -1
    return -1; 
}

// int main(){
//     char a[] = "zzhzholazz", b[] = "hola";
//     printf("%d\n", string_subcadena(a,b));
//     return 0;
// }
// Ejemplo de salida
// 4
// -----------------------------------------------------------------------------

// -----------------------------------------------------------------------------
// f) void string unir(char* arregloStrings[], int n, char* sep, char* res), que concatene
// las n cadenas del arreglo arregloStrings, separ ́andolas por la cadena sep y almacenando el resul-
// tado en res.
// Nota: Si res no tiene espacio suficiente para almacenar el resultado, el comportamiento queda
// indefinido.