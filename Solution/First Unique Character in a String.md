# Python
```python
class Solution:
	def firstUniqChar(self, s: str) -> int:
		d = {}
		for i in s:
			d[i] = d.get(i,0)+1
		
		for i in d:
			if d[i] == 1:
				return s.index(i)
		return -1
```
# Java
```java
class Solution {
	public int firstUniqChar(String s) {
		int index = Integer.MAX_VALUE;
		for (int i = 'a'; i <= 'z'; i++){
			int t = s.indexOf(i);
			if (t != -1 && s.lastIndexOf(i) == t)
				if (t < index)
					index = t;
		}
		return index == Integer.MAX_VALUE ? -1 : index;
	}
}
```
