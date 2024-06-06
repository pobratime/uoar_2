#include <stdio.h>

extern int negation (int);

int main(){

  int x;
  scanf("%d", &x);

  printf("%d\n", negation(x));

  return 0;
}
