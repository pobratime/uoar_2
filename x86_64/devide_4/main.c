#include <stdio.h>

extern int devide4(int);

int main(){

  int x;
  scanf("%d", &x);

  if(devide4(x)==0){
    printf("0\n");
    return 0;

  }else if(devide4(x)==1){
    printf("-1\n");
    return -1;
  }

}
