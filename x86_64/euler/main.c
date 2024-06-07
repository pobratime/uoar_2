#include <stdio.h>

extern unsigned euler(unsigned);

int main(){

  unsigned n;
  scanf("%u", &n);

  printf("%u\n", euler(n));

  return 0;
}
