#include <iostream>
#include <math.h>

using std::cout;
using std::endl;

int sumq(int a) {
  int sum = 0;
  
  for (int i = 1; i <= a; ++i)
    sum += pow(i,2);
  
  return sum;
}

int qsum(int a) {
  int sum = 0;

  for (int i = 1; i <= a; ++i)
    sum += i;

  return pow(sum,2);
}


int main() {
  int dif = 0;
  int b = qsum(100);
  int a = sumq(100);
  dif = b - a;

  cout << "The sum of squares is: " << sumq(100) << endl;
  cout << "The square of the sum is: " << qsum(100) << endl;
  cout << "The difference between them is: " << dif << endl;

  return 0;
}
