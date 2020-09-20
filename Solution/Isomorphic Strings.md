# Python
```python
class Solution:
	def isIsomorphic(self, s: str, t: str) -> bool:
		d = {}
		S = set()
		for i in range(len(s)):
			if s[i] in d:
				if d[s[i]] != t[i]:
					return False
			else:
				if t[i] in S:
					return False
				d[s[i]] = t[i]
				S.add(t[i])
		return True
		
```
# Java
```java
import java.util.HashMap;
import java.util.HashSet;

class Solution {
	public boolean isIsomorphic(String s, String t) {
		HashMap<Character,Character> dict = new HashMap<>();
		HashSet<Character> set = new HashSet<>();
		for (int i=0; i<s.length(); i++) {
			if ( dict.containsKey(s.charAt(i)) ) {
				if ( dict.get(s.charAt(i)) != t.charAt(i) ) {
					return false;
				}
			} else {
				if ( set.contains(t.charAt(i)) ) {
					return false;
				}
				dict.put(s.charAt(i), t.charAt(i));
				set.add(t.charAt(i));
			}
		}
		return true;
	}
}
```
