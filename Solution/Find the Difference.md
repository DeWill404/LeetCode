# Python
```python
class Solution:
	def findTheDifference(self, s: str, t: str) -> str:
		s = sorted(s)
		t = sorted(t)
		for i in range(len(s)):
			if s[i] != t[i]:
				return t[i]
		return t[-1]
```
# Java
```java
class Solution {
	public char findTheDifference(String s, String t) {
		int ascii_S = 0;
		int ascii_T = 0;
		char[] S = s.toCharArray();
		char[] T = t.toCharArray();
		for (int i=0; i<S.length; i++) {
			ascii_S += S[i];
			ascii_T += T[i];
		}
		ascii_T += T[T.length-1];

		return (char)(ascii_T-ascii_S);
	}
}
```
