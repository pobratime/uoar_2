#include <stdio.h>
#include <stdlib.h>

extern int power(int n, int m);
extern int find_power(int n, int k, int *ms, int nm);

int main() {

  int n, m;
  scanf("%d %d", &n, &m);
  printf("%d\n", power(n, m));

  int k, nm;
  scanf("%d %d", &n, &k);
  scanf("%d", &nm);

  int *ms;
  ms = (int *)malloc(nm * sizeof(int));

  for (int i = 0; i < nm; i++) {
      scanf("%d", &ms[i]);
  }

  printf("%d\n", find_power(n, k, ms, nm));

  free(ms);

  return 0;
}

