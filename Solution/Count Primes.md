# Python
```python
class Solution:
	def primesList(self, n):
		p = list(range(3,n,2))
		sl = len(p)
		initial = 4
		for step in range(3, n, 2):
			for i in range(initial, sl+1, step):
				p[i-1] = 0
			initial += 2*(step+1)
			if initial > sl:
				return [2]+list(filter(None, p))
		return [2] if n>2 else []

	def countPrimes(self, n: int) -> int:
		return len(self.primesList(n))
```
# Java
```java
class Solution {
	private static int seive(int max) {
		int seive_limit = (max)/2;
		int initial = 4;
		boolean[] p = new boolean[seive_limit];
		for (int i=0; i<seive_limit; i++) { p[i] = true; }
		for (int step=3; step<max; step+=2) {
			for(int notPrime = initial; notPrime < seive_limit; notPrime += step)
					{ p[notPrime-1] = false; }
			initial += 2*(step+1);
			if (initial > seive_limit) {
				int len = 0;
				for (int i=0; i<seive_limit; i++) {
					if ( p[i] ) {
						len++;
					}
				}
				return len;
			}
		}
		return max>2 ? 1 : 0;
	}
	public int countPrimes(int n) {
		return seive(n);
	}
}
```
