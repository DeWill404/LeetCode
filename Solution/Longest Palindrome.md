# Python
```python
class Solution:
	def longestPalindrome(self, s: str) -> int:
		l = [0]*58
		
		for i in s:
			l[ord(i)-65] += 1
			
		S = 0
		for i in l:
			S += (i//2)*2
		
		return S+1 if S < len(s) else S
```
# Java
```java
class Solution {
	public int longestPalindrome(String s) {
		int[] d = new int[58];
		for (int i=0; i<s.length(); i++) { d[s.charAt(i)-65]++; }
		
		int l=0, m=0;
		for (int i=0; i<58; i++) {
			if (d[i]%2 == 0) { l += d[i]; }
			else if (d[i] > m) { l+=m>0?m-1:0; m=d[i]; }
			else { l += d[i]-1; }
		}
		
		return l+m;
	}
}
```
