#include <stdio.h>
#include <unistd.h>
#include <string.h>


int main() {
    // printf("hello world!");
    write(1, "hello world!", strlen("hello world!"));
    while (1);
}
