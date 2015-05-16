//Stuff to begin program
#include <iostream>
using namespace std;

bool numWorks(int num){
  for(int i = 1; i<=20; i++){
    if(num%i!=0){
      return false;
    }
  }
  return true;
} 

int main()
{
   //actual program stuff
   int x = 21;
   while(!numWorks(x)){
    x++;
   }
   cout << "Answer: " << x;
   
   //Stuff to finish up program
   cout << "\n";
   return 0;
}