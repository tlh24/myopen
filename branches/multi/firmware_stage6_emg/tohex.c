#include <stdio.h>
int main(void){
	int n = 1; 
	unsigned int un; 
	while(n){
		printf("enter a number, 0 quit\n"); 
		scanf("%d", &n); 
		un = (unsigned int)n; 
		printf("in hex: %x \n", un); 
	}
	return 0; 
}
