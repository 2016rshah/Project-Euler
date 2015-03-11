#include <iostream>
using namespace std;

int main(){
	int NUM_STARTS_OF_MONTH_IN_YEAR = 12;
	double NUM_DAYS = 7; // dividing by number of days will give probability a given day is Sunday

	int num_years;
	cout << "Input number of years (100): ";
	cin >> num_years; //100

	int ans = num_years * NUM_STARTS_OF_MONTH_IN_YEAR / NUM_DAYS; // rounds down which works in this problem

	cout << "Answer: " << "probably about " << ans << " Sundays";

	cout << "\n";
	return 0;
}