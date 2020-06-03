#include <stdio.h>

int main() {
    register int x = 10;
    register int y = 20;
    int sum = x + y;

    printf("%d + %d = %d\n", x, y, sum);
}
