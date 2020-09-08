# Python
```python
class Solution:
	def titleToNumber(self, s: str) -> int:
		n = 0
		for i in range(len(s)):
			n += ("ABCDEFGHIJKLMNOPQRSTUVWXYZ".index(s[i])+1)*26**(len(s)-1-i)
		return n
```
# Java
```java
class Solution {
	public int titleToNumber(String s) {
		int n = 0;
		for (int i=0; i<s.length(); i++) { n += (int)((s.charAt(i)-64)*Math.pow(26,s.length()-i-1)); }
		return n;
	}
}
```
