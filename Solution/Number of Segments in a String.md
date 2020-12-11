# Python
```python
class Solution:
	def countSegments(self, s: str) -> int:
		return len(s.split())
```
# Java
```java
class Solution {
	public int countSegments(String s) {
		int count = 0;
		
		int i = 0;
		while(i<s.length()) {
			int j = i;
			while(j<s.length() && s.charAt(j)!=' ') { j++; }
			if (j > i) { count++; }
			i = j+1;
		}
		
		return count;
	}
}
```
