#include <iostream>
#include <string>
#include <sstream>

using std::cout;
using std::endl;
using std::stringstream;
using std::string;

string toString(int number);

int main() {
  int number;
  string s;

  for (int i = 100; i < 1000; ++i) {
    for (int j = 100; j < 1000; ++j) {
      number = i*j;
      s = toString(number);
      if (number < 100000) {
        if (s[0] == s[4] && s[1] == s[3])
          cout << number << endl;
      }
      else {
        if (s[0] == s[5] && s[1] == s[4] && s[2] == s[3])
          cout << number << endl;
      }
    }
  }

  return 0;
}

string toString(int number) {
  stringstream s;
  s << number;
  return s.str();
}
