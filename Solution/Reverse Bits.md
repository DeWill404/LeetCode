# Python
```python
class Solution:
	def reverseBits(self, n: int) -> int:
		n = bin(n)[2:]
		return int(n[::-1]+"0"*(32-len(n)),2)
```
# Java
```java
public class Solution {
	// you need treat n as an unsigned value
	public int reverseBits(int n) {
		int o = 0, power = 31;
		while ( power >= 0 ) {
			o += (n&1) << power;
			n = n >> 1;
			power--;
		}
		return o;
	}
}
```
