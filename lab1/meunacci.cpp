#include <stdio.h>

long long int fibonacci(int n) {
    long long int a = 0, b = 1, c = 0, i = 2;
    if (n == 0) {
        return 0;
    }
    while (i <= n) {
        c = a + b;
        a = b;
        b = c;
        i = i + 1;
    }
    return b;
}

int main() {
    int numero;
    scanf("%d", &numero);

    long long int v1 = fibonacci(numero);
    long long int v2 = fibonacci(numero + 1);
    long long int v3 = fibonacci(numero + 2);

    printf("%d", v1 % 10 + v2 % 10 + v3 % 10);


}
