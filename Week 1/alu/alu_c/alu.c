#include<stdio.h>

int alu(int a,int b,int use){
    int res=0;
    switch(use){
        case(1): res= a+b;
        break;
        case(2): res= a-b;
        break;
        case(3): res=a*b;
        break;
        case(4): res= a/b;
        break;
        default: printf("invalid selection\n");

        }
        printf("the result is %d",res);
        return res;
    }

    int main(){
        int x,y,z;
        printf("enter the value of a ");
        scanf("%d",&x);
        printf("enter the value of b  ");
        scanf("%d",&y);
        printf("choose the operand 1. add\n 2. sub\n 3. mul\n 4. div\n");
        scanf("%d",&z);
        alu(x,y,z);
        return 0;
    }