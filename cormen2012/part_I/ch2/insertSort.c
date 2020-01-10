#include <stdio.h>
#include <stdlib.h>

void insertionSort(int size,int v[size]);

int main(int argc,char **argv){
    
    if(argc<=1){
        printf("\nErro: argc<=1\n");
        return 1;
    }else{
        int n=argc-1,v[n];
        for(int i=0;i<n;i++)v[i]=atoi(argv[i+1]);
        insertionSort(n,v);    
        printf("\n\n\n");
        getchar();
        return 0;
    }

}

void insertionSort(int size, int v[size]){
    int key;
    printf("\nV (in): ");
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
    printf("\nV(out): ");
    for(int i=0;i<size;i++)printf(" %d",v[i]);
}