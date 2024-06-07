#include <stdio.h>

int extern max(int *a, int n);

int main(){

  int *a, n;
  scanf("%d", &n);

  for(int i=0; i<n; i++){
    scanf("%d", &a[i]);
  }

  printf("%d\n", max(a, n));

  return 0;
}
