#include <stdio.h>

int main (){
int arr[10] = {1, 10, 38, 98, 27, 125, 41, 78, 93, 149};
int sum = 0;

for (int i=0; i<10; i++){
if (arr[i] < 128){
sum += arr[i];
}else{
arr[i] = (arr[i] ^ 255);
sum += arr[i];
}
}
printf ("%d \n", sum);
return 0;
}
