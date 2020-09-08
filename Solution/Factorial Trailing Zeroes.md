# Python
```python
class Solution:
	def trailingZeroes(self, n: int) -> int:
		c = 0
		while n:
			n = n//5
			c += n
		return c
```
# Java
```java
class Solution {
	public int trailingZeroes(int n) {
		int c = 0 ; 
		while(n>0) {
		n = n / 5 ; 
		c += n ; 
		}
		return c ; 
	}
}
```
