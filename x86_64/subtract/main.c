#include <stdio.h>

extern int subtract(int, int);

int main(){

  int x, y;
  scanf("%d %d", &x, &y);

  printf("%d\n", subtract(x, y));

  return 0;
}
