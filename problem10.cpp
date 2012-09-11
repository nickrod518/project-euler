#include <iostream>

typedef unsigned long long int ULL;

using std::cout;
using std::endl;

int main() {
  unsigned int number = 4;
  bool prime = false;
  ULL sumOfPrimes = 5;
  
  while (number != 2000000) {
    for (unsigned int i = 2; i <= number/2; ++i) {
      if (number%i == 0) {
        number++;
        break;
      }
      else {
        prime = true;
      }
    }
  
    if (prime == true) {
      sumOfPrimes += number;
      number++;
    }
  }

  cout << "sum :" << sumOfPrimes << endl;

  return 0;
}