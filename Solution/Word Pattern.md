# Python
```python
class Solution:
	def wordPattern(self, pattern: str, s: str) -> bool:
		s = s.split()
		if len(pattern) != len(s):
			return False
		
		S = set()
		d = {}
		for i in range(len(pattern)):
			if pattern[i] in d:
				if d[pattern[i]] != s[i]:
					return False
			else:
				if s[i] in S:
					return False
				d[pattern[i]] = s[i]
				S.add(s[i])
		return True
```
# Java
```java
import java.util.HashMap;
import java.util.Map;

class Solution {
	public boolean wordPattern(String pattern, String s) {
		String[] strArray = s.split(" ");
		if (pattern.length() != strArray.length) { return false; }
	
		Map<Character, String> dict = new HashMap<>();
		for (int i=0; i<pattern.length(); i++) {
			if (dict.containsKey(pattern.charAt(i))) {
				if (!dict.get(pattern.charAt(i)).equals(strArray[i])) {
					return false;
				}
			} else {
				for (int j=0; j<i; j++) {
					if (strArray[i].equals(strArray[j])) {
						return false;
					}
				}
				dict.put(pattern.charAt(i), strArray[i]);
			}
		}
		return true;
	}
}
```
