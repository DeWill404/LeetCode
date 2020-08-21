# Python
```python
class Solution:
	def reverse(self, x: int) -> int:
		reverse=0	# Reverse Variable
		sign=int(x<0)	# Sign Variable
		x=abs(x)	# Removing sign

		# Reverse
		while x:
			reverse = reverse*10 + x%10
			x //= 10
		
		# If out of limit, remove 0
		if reverse>2**31-1 or reverse<-2**31:
			return 0
		return -(reverse) if sign else reverse
```
# Java
```java
class Solution {
	public int reverse(int x) {
		// set reverse variable
		long n=0;
		while (x != 0) {
			n = n*10 + x%10;
			x /= 10;
		}
		
		// If no. is out of limit
		if (n>2147483647 || n<-2147483648) { return 0; }
		
		// Return
		return (int)n;
	}
}
```
