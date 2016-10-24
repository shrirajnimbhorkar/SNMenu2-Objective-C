//
//  main.m
//  SNMenu2
//
//  Created by Student P_05 on 24/10/16.
//  Copyright © 2016 Felix ITs. All rights reserved.
//

#import <Foundation/Foundation.h>
void CallSwitchCase(int A[10]);
void AscendingArray();
void DispOdd();
void DispEven();
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSLog(@"Menu Driven Program For Various Functions");
        int a[10],i;
        printf("Fill an array with integers");
        for(i=0;i<10;i++)
            {
                scanf("%d",&a[i]);
            }
        printf("\nFor sorting array in ascending order: 1");
        printf("\nFor displaying sum of all odd values in an array: 2");
        printf("\nFor displaying sum of all even values in an array: 3");
        CallSwitchCase(a);
        
        }
    return 0;
}
void CallSwitchCase(int A[10])
{
    int continu=1,choice;
    while(continu)
    {
        printf("\nEnter your choice: ");
        scanf("%d",&choice);
        switch(choice)
        {
            case 1: AscendingArray(A);
                break;
            case 2: DispOdd(A);
                break;
            case 3: DispEven(A);
                break;
            default:printf("\nWrong Choice Entered");
                break;
        }
        printf("\nPress 1 to continue and 0 to exit: ");
        scanf("%d",&continu);
    }
}
void AscendingArray(int a[10])
{
    int i, j, temp;
    for(i=0;i<10;i++)
    {
        for(j=i+1;j<10;j++)
        {
            if(a[i]>a[j])
            {
                temp=a[i];
                a[i]=a[j];
                a[j]=temp;
            }
        }
    }
    printf("\narray elements in ascending order is: ");
    for(i=0;i<10;i++)
    {
        printf("\t%d",a[i]);
    }
}

void DispOdd(int a[10])
{
    int i,sum=0;
    printf("\n");
    for(i=0;i<10;i++)
    {
        if(a[i]%2!=0)
        {
            printf("%d\t",a[i]);
            sum=sum+a[i];
        }
    }
    printf("\nSum of Odd numbers is: %d",sum);
}
void DispEven(int a[10])
{
    int i,sum=0;
    printf("\n");
    for(i=0;i<10;i++)
    {
        if(a[i]%2==0)
        {
            printf("%d\t",a[i]);
            sum=sum+a[i];
        }
    }
    printf("\nSum of Even numbers is: %d",sum);
}