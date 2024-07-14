//
// gcc main.c -o main
//

#include <stdio.h>

#define mul(x, y) (x * y + 10)

int main() {
  printf("Multi: %d\n", mul(3, 4));
}

