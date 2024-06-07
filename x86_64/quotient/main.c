#include <stdio.h>

extern void quotient(unsigned a, unsigned b, unsigned *k, unsigned *o);

int main(){

  unsigned a, b;
  unsigned k, o;

  scanf("%u %u", &a, &b);

  quotient(a, b, &k, &o);

  printf("%u / %u = %u\n", a, b, k);
  printf("%u %% %u = %u\n", a, b, o);

  return 0;
}
