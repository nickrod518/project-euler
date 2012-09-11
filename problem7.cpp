#include <iostream>

using std::cout;
using std::endl;

int main() {
  unsigned int number = 4;
  bool prime = false;
  unsigned int primeNum = 2;
  
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
    }
  }

  cout << "primeNum: " << primeNum << endl;

  return 0;
}
