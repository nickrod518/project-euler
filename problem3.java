import java.math.BigInteger;

public class problem3 {
  public static void main(String[] args) {
  BigInteger test = new BigInteger ("600851475143");
  BigInteger number = new BigInteger ("600851475143");
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
  
  BigInteger bigIntResult = bigInteger1.multiply(bigInteger2); 
  System.out.println("Result is  ==> " + bigIntResult);
  }
}

public static boolean isPrime (int num) {
  for (int i = 2; i < num/2; ++i) {
    if (num%i == 0)
      return false;
  }
  return true;
}