/*
Write a function that takes two numbers (start, end) and returns a list of all prime numbers between
them.
Ensure that the function correctly identifies prime numbers and handles edge cases where start is
greater than end.
 */

main(){
  print(getPrimes(2, 20));

}
List<int> getPrimes(int start, int end) {
  if (start > end) {
    int temp = start;
    start = end;
    end = temp;
  }

  List<int> primes = [];

  for (int i = start; i <= end; i++) {
    bool isPrime = true;
    if (i < 2) {
      isPrime = false;
    } else {
      for (int j = 2; j < i; j++) {
        if (i % j == 0) {
          isPrime = false;
          break;
        }
      }
    }
    if (isPrime) {
      primes.add(i);
    }
  }

  return primes;
}

