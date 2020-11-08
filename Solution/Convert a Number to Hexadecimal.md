# Python
```python
class Solution:
	def toHex(self, num: int) -> str:
		if num == 0:
			return "0"
		
		if num < 0:
			num += 2**32
		
		o = ""
		while num:
			o = "0123456789abcdef"[num%16]+o
			num //= 16
		return o
```
# Java
```java
class Solution {
	public String toHex(int num) {
		if (num == 0) { return "0"; }

		char[] hex = {'0','1','2','3','4','5','6','7','8','9','a','b','c','d','e','f'};
		
		StringBuffer sb = new StringBuffer();
		if (num < 0) {
			num = Math.abs(num)-1;
			int i = 0;
			while (num > 0) {
				sb.append(hex[15-num%16]);
				num /= 16;
				i++;
			}
			while (i < 8) { sb.append('f'); i++; }
			return new String(sb.reverse());
		}
		
		while (num > 0) {
			sb.append(hex[num%16]);
			num /= 16;
		}
		return new String(sb.reverse());
	}
}
```
