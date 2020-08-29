# Python
```python
class Solution:
	def addBinary(self, a: str, b: str) -> str:
		# First convert bin to dec
			# Then Add, return in bin format
		return bin(int(a,2)+int(b,2))[2:]
```
# Java
```java
class Solution {
	public String addBinary(String a, String b) {
		StringBuilder sb = new StringBuilder();	// To store output
		char carry = '0';	// To store carry
		int shift = a.length() - b.length();	// To store difference in length
		int max = shift < 0 ? b.length() : a.length();	// To store max length

		// Iterate and add
		for (int i=max-1; i>=0; i--) {
			char t = '0';	// Temporary variable
			// Add digits
			if (max-1-i < a.length()) { t += a.charAt( shift<0 ? i+shift : i )-'0'; }
			if (max-1-i < b.length()) { t += b.charAt( shift>0 ? i-shift : i )-'0'; }
			t += carry-'0';
			// Set output digits & carry
			switch (t) {
				case '3':sb.append('1');carry='1';break;
				case '2':sb.append('0');carry='1';break;
				case '1':sb.append('1');carry='0';break;
				case '0':sb.append('0');carry='0';break;
			}
			// Append a bit, if carry is present at end
			if (i==0 && carry=='1') { sb.append('1'); }
		}
		
		return new String(sb.reverse());
	}
}
```
