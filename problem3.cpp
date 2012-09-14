#include <iostream>

using std::cout;
using std::endl;

typedef unsigned long long int ULL;

bool isPrime(ULL num);

int main() {
//  ULL test = 13195;
//  ULL number = 13195; // answer is 29
  ULL test = 600851475143;
  ULL number = 600851475143;

  bool done = false;

  while (done == false) {
    for (ULL i = number-1; i > 0; --i) {
      if (!isPrime(i) || test%i != 0) {
        cout << "failed: " << number << endl;
        number = i;
        break;
      }
      else {
        cout << "answer: " << number-1 << endl;
        done = true;
      }
    }
  }

  return 0;
}

bool isPrime(ULL num) {
  for (ULL i = 2; i < num/2; ++i) {
    if (num%i == 0)
      return false;
  }
  return true;
}
