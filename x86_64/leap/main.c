#include <stdio.h>

extern int leap(int);

int main(){

  int x;
  scanf("%d", &x);
  if(leap(x)==0){
    printf("0\n");
    return 0;
  }else{
    printf("-1\n");
    return -1;
  }
}
