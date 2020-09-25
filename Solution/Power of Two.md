# Python
```python
import math

class Solution:
    def isPowerOfTwo(self, n: int) -> bool:
        return int(math.log2(n))==math.log2(n) if n>0 else 0
```
# Java
```java
class Solution {
	public boolean isPowerOfTwo(int n) {
		if (n>0) {
			while (n!=0 && n>>1==n/2.0) {
				n /= 2;
			}
			return n==1;
		} else {
			return false;
		}
	}
}
```
