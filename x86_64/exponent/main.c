#include <stdio.h>
#include <stdlib.h>

extern int exponent(unsigned n, unsigned *m, unsigned *k);

int main(){

  unsigned n;
  unsigned *m;
  unsigned *k;

  scanf("%u", &n);

  m = (int *)malloc(n * sizeof(int));
  k = (int *)malloc(n * sizeof(int));

  if(exponent(n, m, k) == 1){
    printf("m=%u k=%u, 1\n", *m, *k);
    return 0;
  }else{
    printf("0\n");
    return -1;
  }
}
