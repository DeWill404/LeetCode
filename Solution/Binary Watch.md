# Python
```python
from itertools import combinations as combine

class Solution:
	def readBinaryWatch(self, num: int) -> List[str]:
		o = []
		
		for h in range(12):
			for m in range(60):
				if (bin(h)+bin(m)).count("1") == num:
					o.append('%d:%02d' %(h,m))
		
		return o
```
# Java
```java
import java.util.ArrayList;

class Solution {
	public List<String> readBinaryWatch(int num) {
		ArrayList<String> list = new ArrayList<>();

		for (int h=0; h<12; h++) {
			for (int m=0; m<60; m++) {
				if (Integer.bitCount(h*64+m) == num) {
					list.add(String.format("%d:%02d", h, m));
				}
			}
		}   
	}
}
```
