# Python
```python
class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        i = 0
        m = 0
        while i < len(s):
            sets = set(s[i])
            l = i+1
            while l<len(s) and s[l] not in sets:
                sets.add(s[l])
                l += 1
            if l-i > m:
                m = l-i
            i += 1
        return m
        
```
# Java
```java
class Solution {
    public int lengthOfLongestSubstring(String s) {
        int i=0, max=0;
        while (i<s.length()) {
            HashSet<Character> sets = new HashSet<>();
            int l = i;
            while (l<s.length() && sets.contains(s.charAt(l))==false) {
                sets.add(s.charAt(l));
                l++;
            }
            if (l-i > max) { max = l-i; }
            if (l == s.length()) { return max; }
            i++;
        }
        return max;
    }
}
```
