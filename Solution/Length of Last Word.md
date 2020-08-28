# Python
```python
class Solution:
	def lengthOfLastWord(self, s: str) -> int:
		s = s.strip()	# Strip spaces
		i = s.rfind(" ")	# Find last spce character
		if i==-1:return len(s)	# # If string is empty
		return len(s[i+1:])	# print length of last word
```
# Java
```java
class Solution {
	private int index(String s) {
		// Search for last sapce character index...
		int i = s.length()-1;
		while (i>=0 && s.charAt(i)!=' ') { i--; }
		return s.length()-i-1;
	}
	public int lengthOfLastWord(String s) {
		// If string is empty
		if (s.length() == 0) { return 0; }
		return index(s.strip());
	}
}
```
