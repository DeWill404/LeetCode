# Python
```python
class Solution:
	def isPalindrome(self, s: str) -> bool:
		# If string only contain alnum
		if s.isalnum():
			return s.lower()==s[::-1].lower()

		# Generate string with only alphabet & number
		o = ""
		for i in s:
			if i.isalnum():
				o += i
		o = o.lower()	# Convet to lower case


		return o==o[::-1]
```
# Java
```java
class Solution {
	private boolean isalnum(int c) {
		return (47<c && c<58) || (64<c && c<91) || (96<c && c<123);
	}
	public boolean isPalindrome(String s) {
		// Check if string is empty
		if (s.isEmpty()) { return true; }
		
		// Set variable
		char[] c = s.toCharArray();
		int i=0, j=c.length-1;
		
		// Iterate
		while (i<j) {
			// If char at i is alnum
			if ( isalnum(c[i]) ) {
				while (i<j && isalnum(c[j])==false) { j--; }
				// If char at j is alnum, & not equal to char at i
				if (Character.toLowerCase(c[i])!=Character.toLowerCase(c[j])){ return false; }
				j--;
			}
			i++;
		}
		
		return true;
		
	}
}
```
