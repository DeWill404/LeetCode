# Python
```python
class Solution:
	def thirdMax(self, nums: List[int]) -> int:
		a, b, c = None, None, None
		
		for n in nums:
			if n==a or n==b or n==c:
				continue
			
			if a==None or n>a:
				a, b, c = n, a, b
			elif b==None or n>b:
				b, c = n, b
			elif c==None or n>c:
				c = n
				
		return a if c==None else c
```
# Java
```java
class Solution {
	public int thirdMax(int[] nums) {
		Integer a = null;
		Integer b = null;
		Integer c = null;
		
		for (Integer n : nums) {
			if (n.equals(a) || n.equals(b) || n.equals(c)) continue;
			
			if ( a==null || n>a ) {
				c = b;
				b = a;
				a = n;
			} else if ( b==null || n>b ) {
				c = b;
				b = n;
			} else if ( c==null || n>c ) {
				c = n;
			}
		}
		
		return c!=null ? c : a;
	}
}
```
