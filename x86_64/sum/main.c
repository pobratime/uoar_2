#include <stdio.h>

extern unsigned sum(unsigned);

int main(){

  int x;
  scanf("%u", &x);

  printf("%u\n", sum(x));

  return 0;
}
