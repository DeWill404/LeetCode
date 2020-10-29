# Python
```python
class Solution:
	def isPerfectSquare(self, num: int) -> bool:
		return num**0.5 == int(num**0.5)
```
# Java
```java
class Solution {
	public boolean isPerfectSquare(int num) {
		return Math.pow(num,0.5) == (int)Math.pow(num,0.5);
	}
}
```
