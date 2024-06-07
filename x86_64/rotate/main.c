#include <stdio.h>

extern void rotate(int *a, int n);

int main(){

  int n;
  int *a;

  scanf("%d", &n);

  for(int i=0; i<n; i++){
    scanf("%d", &a[i]);
  }

  rotate(a, n);

  for(int i=0; i<n; i++){
    printf("%d ", a[i]);
  }

  printf("\n");

  return 0;
}
