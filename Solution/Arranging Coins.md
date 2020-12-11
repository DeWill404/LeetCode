# Python
```python
class Solution:
	def arrangeCoins(self, n: int) -> int:
		return int((1+(1+8*n)**0.5)/2)-1
```
# Java
```java
class Solution {
	public int arrangeCoins(int n) {
		return (int)((1+Math.sqrt(1+8.0*n))/2)-1;
	}
}
```
