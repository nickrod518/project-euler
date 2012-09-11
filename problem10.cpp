#include <iostream>

using std::cout;
using std::endl;

int main() {
  int number = 4;
  bool prime = false;
  int primeNum = 2;
  int sumOfPrimes = 5;
  
  while (number != 2000000) {
    for (int i = 2; i <= number/2; ++i) {
      if (number%i == 0) {
        number++;
        prime = false;
        break;
      }
      else {
        prime = true;
      }
    }
  
    if (prime == true) {
      sumOfPrimes += number;
      number++;
      primeNum++;
      cout << "sum: " << number << endl;
    }
  }

  cout << "primeNum: " << primeNum << endl;
  cout << "number: " << (number-1) << endl;
  cout << "sum :" << sumOfPrimes << endl;

  return 0;
}
