# Python
```python
class Solution:
	def isSubsequence(self, s: str, t: str) -> bool:
		i,j = 0,0
		while i<len(s) and j<len(t):
			if s[i] == t[j]:
				i += 1
			j += 1
		return i == len(s)
```
# Java
```java
class Solution {
	public boolean isSubsequence(String s, String t) {
		char[] S = s.toCharArray();
		char[] T = t.toCharArray();
		
		int i=0, j=0;
		while (i<S.length && j<T.length) {
			if (S[i] == T[j]) { i++; }
			j++;
		}

		return i == S.length;
	}
}
```
