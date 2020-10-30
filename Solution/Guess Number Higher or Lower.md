# Python
```python
# The guess API is already defined for you.
# @param num, your guess
# @return -1 if my number is lower, 1 if my number is higher, otherwise return 0
# def guess(num: int) -> int:

class Solution:
	def guessNumber(self, n: int) -> int:
		min, max = 1, n
		while True:
			if guess(n) == 0:
				return n
			elif guess(n+1) == 0:
				return n+1
			if guess(n) == 1:
				min = n+1
				n = (n+max)//2
			else:
				max = n-1
				n = (min+n)//2
```
# Java
```java
/** 
 * Forward declaration of guess API.
 * @param  num   your guess
 * @return 		 -1 if num is lower than the guess number
 *				  1 if num is higher than the guess number
 *			   otherwise return 0
 * int guess(int num);
 */

public class Solution extends GuessGame {
	public int guessNumber(int n) {
		int min=1, max=n;
		while (true) {
			if (guess(n) == 0) { return n; }
			else if (guess(n+1) == 0) { return n+1; }

			if (guess(n) == 1) {
				min = n+1;
				n = n+(max-n)/2;
			} else {
				max = n-1;
				n = min+(n-min)/2;
			}
		}
	}
}
```
