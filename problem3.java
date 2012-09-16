import java.math.BigInteger;

public class problem3 {
  public static void main(String[] args) {
    BigInteger two = new BigInteger("2");
    BigInteger test = new BigInteger("600851475143");
    BigInteger number = new BigInteger("600851475143");
 
    for (BigInteger i = two; i.compareTo(test) < 0; i = i.add(BigInteger.ONE)) {
      if (BigInteger.ZERO.compareTo(test.mod(i)) == 0) {
        System.out.println("testing: " + number);
        number = test.divide(i);
        if (number.isProbablePrime(100)) {
          System.out.println("passed!");
          System.out.println(number);
          break;
        }
      }
    }
  }
}
