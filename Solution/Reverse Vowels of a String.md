# Python
```python
class Solution:
	def reverseVowels(self, s: str) -> str:
		o = list(s)
		s, e = 0, len(s)-1

		while s < e:
			if o[s].lower() not in "aeoiu":
				s += 1
			elif o[e].lower() not in "aeoiu":
				e -= 1
			else:
				o[s], o[e] = o[e], o[s]
				s += 1
				e -= 1
		
		return "".join(o)
```
# Java
```java
class Solution {
	private boolean isVowel(char ch) {
		char c = Character.toLowerCase(ch);
		return c=='a' || c=='e' || c=='o' || c=='i' || c=='u';
	}
	
	public String reverseVowels(String S) {
		char[] o = S.toCharArray();
		int s=0, e=o.length-1;
		
		while (s < e) {
			if (!isVowel(o[s])) {
				s++;
			} else if (!isVowel(o[e])) {
				e--;
			} else {
				char temp = o[s];
				o[s] = o[e];
				o[e] = temp;
				s++;
				e--;
			}
		}
		return new String(o);
	}
}
```
