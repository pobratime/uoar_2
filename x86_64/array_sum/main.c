#include <stdio.h>

extern int sum(int *a, int n);

int main(){

  int *a;
  int n;

  scanf("%d", &n);

  for(int i=0; i<n; i++){
    scanf("%d", &a[i]);
  }

  printf("%d\n", sum(a, n));

  return 0;
}
