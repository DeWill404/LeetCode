# Python
```python
class Solution:
	def convertToTitle(self, n: int) -> str:
		o = ""

		while n:
			n -= 1
			o = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"[n%26] + o
			n //= 26

		return o
```
# Java
```java
class Solution {
	public String convertToTitle(int n) {
		StringBuffer sb = new StringBuffer();

		while ( n > 0 ) {
			n--;
			sb.append((char)(n%26+65));
			n /= 26;
		}
		return new String(sb.reverse());
	}
}
```
