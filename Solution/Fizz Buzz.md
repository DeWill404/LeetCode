# Python
```python
class Solution:
	def fizzBuzz(self, n: int) -> List[str]:
		o = []

		for i in range(n):
			if (i+1)%3==0 and (i+1)%5==0:
				o.append("FizzBuzz")
			elif (i+1)%3 == 0:
				o.append("Fizz")
			elif (i+1)%5 == 0:
				o.append("Buzz")
			else:
				o.append(str(i+1))

		return o
```
# Java
```java
import java.util.Arrays;

class Solution {
	public List<String> fizzBuzz(int n) {
		String[] o = new String[n];

		for (int i=1; i<=n; i++) {
			if (i%3==0 && i%5==0)
				o[i-1] = "FizzBuzz";
			else if (i%3==0)
				o[i-1] = "Fizz";
			else if (i%5 == 0)
				o[i-1] = "Buzz";
			else
				o[i-1] = String.valueOf(i);
		}

		return Arrays.asList(o);
	}
}
```
