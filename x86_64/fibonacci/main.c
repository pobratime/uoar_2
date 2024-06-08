#include <stdio.h>

extern void fibonacci(int n, int *a);

int main(){

  int n;
  int *a;

  scanf("%d", &n);

  fibonacci(n, a);

  for(int i=0; i<n; i++){
    printf("%d ", a[i]);
  }
  
  printf("\n");

  return 0;
}
