#include <stdio.h>

extern int min(int, int);

int main(){

  int x, y;
  scanf("%d %d", &x, &y);

  printf("%d\n", min(x, y));

  return 0;
}
