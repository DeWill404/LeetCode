# Python
```python
class Solution:
	def isUgly(self, num: int) -> bool:
		while num>0 :
			if num%2==0: num=num//2
			elif num%3==0: num=num//3
			elif num%5==0: num=num//5
			elif num==1: return True
			else: return False
		return False

```
# Java
```java
class Solution {
	public boolean isUgly(int num) {
		if (num < 1) {
			return false;
		} else {
			while (num > 0) {
				if (num%2 == 0) num /= 2;
				else if (num%3 == 0) num /= 3;
				else if (num%5 == 0) num /= 5;
				else if (num == 1) return true;
				else return false;
			}
			return false;
		}
	}
}
```
