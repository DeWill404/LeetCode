# Python
```python
class Solution:
	def canConstruct(self, ransomNote: str, magazine: str) -> bool:
		l = [0]*26
		for i in magazine:
			l[ord(i)-97] += 1
		for i in ransomNote:
			l[ord(i)-97] -= 1
			if l[ord(i)-97] < 0:
				return False
		return True
```
# Java
```java
class Solution {
	public boolean canConstruct(String ransomNote, String magazine) {
		int[] l = new int[26];
		
		for (int i=0; i<magazine.length(); i++) {
			l[magazine.charAt(i)-97]++;
		}
		
		for (int i=0; i<ransomNote.length(); i++) {
			l[ransomNote.charAt(i)-97]--;
			if (l[ransomNote.charAt(i)-97] < 0) { return false; }
		}
		
		return true;
	}
}
```
