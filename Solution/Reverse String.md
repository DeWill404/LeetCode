# Python
```python
class Solution:
	def reverseString(self, s: List[str]) -> None:
		"""
		Do not return anything, modify s in-place instead.
		"""
		for i in range(len(s)//2):
			s[i],s[len(s)-1-i] = s[len(s)-1-i],s[i]
```
# Java
```java
class Solution {
	public void reverseString(char[] s) {
		for (int i=0; i<s.length/2; i++) {
			char temp = s[i];
			s[i] = s[s.length-1-i];
			s[s.length-1-i] = temp;
		}
	}
}
```
