# Python
```python
class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        if len(s) != len(t): return False
        
        dic_count = {}
        for a,b in zip(s,t):
            dic_count[a] = dic_count.setdefault(a,0)+1
            dic_count[b] = dic_count.setdefault(b,0)-1
        
        for i in dic_count:
            if dic_count[i] != 0:
                return False
        return True
```
# Java
```java
import java.util.HashSet;
import java.util.Set;

class Solution {
    public boolean isAnagram(String s, String t) {
        if ( s.length() != t.length() ) { return false; }

		int[] a = new int[26];
		for (char c: s.toCharArray()) { a[c-'a']++; }
		for (char c: t.toCharArray()) { a[c-'a']--; }

		for (int i=0; i<26; i++)
			if (a[i] != 0)
				return false;
		return true;
    }
}
```
