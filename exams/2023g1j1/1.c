#include <stdio.h>
#include <stdlib.h>

extern int broj_ponavljanja(int *a, int n, int x);
extern int presek(int *a, int n, int *v, int nv, int *c);

int main(){

  // PRVI DEO ZADATKA

  int *a;
  int n, x;

  scanf("%d %d", &x, &n);

  a = (int *)malloc(n* sizeof(int));
  
  for(int i=0; i<n; i++){
    scanf("%d", &a[i]);
  }

  printf("%d\n", broj_ponavljanja(a, n, x));

  // DRUGI DEO ZADATKA

  int *v, *c;
  int nv;

  scanf("%d", &nv);

  v = (int *)malloc(nv * sizeof(int));

  for(int i=0; i<nv; i++){
    scanf("%d", &v[i]);
  }

  printf("%d\n", presek(a, n, v, nv, c));

  return 0;
}
