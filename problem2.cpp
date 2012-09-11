#include <iostream>

using std::cout;
using std::endl;

int main() {
  int sum = 0;
  int anot,bnot = 0;
  int a = 1;
  int b = 2;
  while (b <= 4000000) {
    if (b%2 == 0) 
      sum += b;
    anot = a;
    bnot = b;
    b = anot + bnot;
    a = bnot;
    cout << "a = " << endl << a << endl;
    cout << "b = " << endl << b << endl;
    cout << "sum = " << endl << sum << endl;
  }
  cout << sum << endl;
  return 0;
}
