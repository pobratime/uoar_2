#include <stdio.h>
#include <stdlib.h>

int izracunaj (char *num);

int main(){

  char *num;

  scanf("%ms", &num);

  printf("%c", izracunaj(num));

  free(num);

  return 0;
}
