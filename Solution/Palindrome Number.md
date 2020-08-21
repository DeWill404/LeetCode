# Python
```python
class Solution:
	def isPalindrome(self, x: int) -> bool:
		# Corner Case
		if x<0:
			return False
		if x<10:
			return True
			
		n = 0	# Reverse variable
		t = x	# temporary

		# Reverse
		while t:
			n = n*10 + t%10
			t //= 10
		return n==x
```
# Java
```java
class Solution {
	public boolean isPalindrome(int x) {
		// Corner case
		if (x<0) { return false; }
		if (x<10) { return true; }
		
		int t = x;	// Temporary Variable
		int n = 0;	// Reverse Variable
		
		// Reverse
		while ( x!=0 ) {
			n = n*10 + x%10;
			x /= 10;
		}
		return t==n;
	}
}
```
