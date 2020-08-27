# Python
```python
class Solution:
	def strStr(self, haystack: str, needle: str) -> int:
		return haystack.find(needle)
```
# Java
```java
class Solution {
	public int strStr(String haystack, String needle) {
		if (needle.equals(""))
				return 0;
		return haystack.indexOf(needle);
	}
}
```
