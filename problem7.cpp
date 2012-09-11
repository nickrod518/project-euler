#include <iostream>

using std::cout;
using std::endl;

int main() {
  int number = 4;
  bool prime = false;
  int primeNum = 2;
  
  while (primeNum != 10001) {
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
      number++;
      primeNum++;
      cout << "primeNum: " << primeNum << endl;
    }
  }

  cout << "primeNum: " << primeNum << endl;
  cout << "number: " << (number-1) << endl;

  return 0;
}
