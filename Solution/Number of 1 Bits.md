# Python
```python
class Solution:
	def hammingWeight(self, n: int) -> int:
		return bin(n).count("1")
```
# Java
```java
public class Solution {
	// you need to treat n as an unsigned value
	public int hammingWeight(int n) {
		int C = 0;
		while (n != 0) {
			C += n&1;
			n = n >>> 1;
		}
		return C;
	}
}
```
