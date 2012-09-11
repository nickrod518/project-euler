#include <iostream>

using std::cout;
using std::endl;

long test(int num);

int main() {
  cout << "smallest number with no remainder: " << test(20) << endl;

  return 0;
}

long test(int num) {
  int div;
  long smallest = 2;
  bool nope = true;

  while (nope == true) {
    for (div = 2; div <= num; div++) {
      if (smallest % div != 0)
        break;
    }
    if (div != 21)
      smallest++;
    else
      nope = false;
  }

  return smallest;
}
