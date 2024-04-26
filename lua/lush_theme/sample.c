#include <stdio.h>
#include <stdlib.h>

#define MAX 100

/* Global variable declaration */
int globalVar = 50;

/* Function declaration */
int multiply(int, int);

int main() {
    int a = 10, b = 20;
    int result;
    char *message = "Hello, World!";
    int *ptr = NULL;

    ptr = malloc(10 * sizeof(int));

    // TODO

    // Something from stdlib.h
    printf("Random number: %d\n", rand());

    // Single line comment
    printf("Message: %s\n", message);

    /* Multi-line comment
       More detailed explanation here */
    if (a < b) {
        printf("a is less than b\n");
    } else {
        printf("a is not less than b\n");
    }

    // Loop example
    for (int i = 0; i < MAX; i++) {
        printf("%d ", i);
    }
    printf("\n");

    // Function call
    result = multiply(a, b);
    printf("Product of %d and %d is %d\n", a, b, result);

    return 0;
}

// Function definition
int multiply(int x, int y) { return x * y; }
