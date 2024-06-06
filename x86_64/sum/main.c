#include <stdio.h>

extern unsigned sum(int);

int main(){

  int x;
  scanf("%d", &x);

  printf("%d\n", sum(x));

  return 0;
}
