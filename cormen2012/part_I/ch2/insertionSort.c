#include <stdio.h>

void insertionSort(int size,int v[size]);

int main(void){
    int n;
    printf("\nn: ");
    scanf("%d",&n);
    int v[n];
    printf("\nv: ");
    for(int i=0;i<n;i++)scanf("%d",&v[i]);
    insertionSort(n,v);    
    printf("\n\n\n");
    getchar();
    getchar();
}

void insertionSort(int size, int v[size]){
    int key;
    printf("\nV: ");
    for(int i=0;i<size;i++)printf(" %d",v[i]);
    for(int j=1,i=0;j<size;j++,i=j-1){
        key = v[j];
        //insere v[j] na sequência ordenada 
        while(i>=0&&v[i]>key){
            v[i+1]=v[i];
            i--;
        }
        v[i+1]=key;
    }
    printf("\nV: ");
    for(int i=0;i<size;i++)printf(" %d",v[i]);
}