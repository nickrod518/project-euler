import java.math.BigInteger;

public class problem3 {
  public static void main(String[] args) {
    BigInteger test = new BigInteger("600851475143");
    BigInteger number = new BigInteger("600851475143");
    BigInteger zero = new BigInteger("0");
    BigInteger one = new BigInteger("1");
    boolean done = false;
  
    while (done == false) {
      //for (ULL i = number-1; i > 0; --i) {
      for (BigInteger i = number.subtract(one); i.compareTo(zero) > 0; i=i.subtract(one)) {
        //if (!isPrime(i) || test%i != 0) {
        if (!isPrime(i) || test.mod(i).compareTo(zero) != 0) {
          //cout << "failed: " << number << endl;
          System.out.println("failed: " + number);
          number = i;
          break;
        }
        else {
          //cout << "answer: " << number-1 << endl;
          System.out.println("answer: " + number.subtract(one));
          done = true;
        }
      }
    }
  }

  public static boolean isPrime (BigInteger num) {
    BigInteger zero = new BigInteger("0");
    BigInteger one = new BigInteger("1");
    BigInteger two = new BigInteger("2");

    //for (int i = 2; i < num/2; ++i) {
    for (BigInteger i = two; i.compareTo(num.divide(two)) < 0; i=i.add(one)) {
      System.out.println("is " + num + " prime?");
      //if (num%i == 0)
      if (num.mod(i).compareTo(zero) == 0) {
        System.out.println("num.mod(i) == zero?" + num.mod(i));
        return false;
      } 
    }
    return true;
  }
}
