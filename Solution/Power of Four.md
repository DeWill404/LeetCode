# Python
```python
import math

class Solution:
	def isPowerOfFour(self, num: int) -> bool:
		return num>0 and (math.log(num,4)*10)%10==0
```
# Java
```java
class Solution {
	public boolean isPowerOfFour(int num) {
		return num>0 && (Math.log(num)/Math.log(4)*10)%10 == 0;
	}
}
```
