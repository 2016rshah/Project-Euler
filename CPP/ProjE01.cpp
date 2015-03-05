//Stuff to begin program
#include <iostream>
using namespace std;
int main()
{
    
   //actual program stuff
   int sum = 0;
   for(int i = 0; i<1000; i++){
       if(i%5==0 || i%3==0){
           sum+=i;
       }
   }
   cout << "Answer: " << sum;
   
   //Stuff to finish up program
   cout << "\n";
   return 0;
}

//To compile:   $ g++ ProjE01.cpp
//To run:       $ ./a.out     