#include <iostream>
using namespace std;
int main(){
    int a = 1;
    int b = 2;
    int sum = 0;
    for(int c = a+b; b<4000000; c = a+b, a = b, b = c){
        if(b%2 == 0){
            sum+=b;
        }
    }
    cout << "Answer: " << sum << "\n";
    return 0;
}