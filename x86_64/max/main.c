#include <stdio.h>

extern int maksimum(int, int);

int main(){

  int x, y;
  scanf("%d %d", &x, &y);

  printf("%d\n", maksimum(x,y));

  return 0;
}
