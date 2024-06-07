#include <stdio.h>

extern void swap(int *px, int *py);

int main(){

  int x, y;
  scanf("%d %d", &x, &y);

  printf("x:%d y:%d\n", x, y);

  swap(&x, &y);

  printf("x:%d y:%d\n", x, y);

  return 0;
}
