# Python
```python
class Solution:
	def addDigits(self, num: int) -> int:
		if num == 0:
			return 0
		elif num%9:
			return num%9
		return 9
```
# Java
```java
class Solution {
	public int addDigits(int num) {
		if (num == 0)
			return 0;
		else if (num%9 == 0)
			return 9;
		return num%9;
	}
}
```
