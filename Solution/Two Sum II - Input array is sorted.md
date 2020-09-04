# Python
```python
class Solution:
	def twoSum(self, n: List[int], target: int) -> List[int]:
		# Pointer
		x,y = 0, len(n)-1
	
		# Iterate overloop
		while n[x]+n[y] != target:
			# It sum is large, then decrease greater pointer
			if n[x]+n[y] > target:  y -= 1
			# It sum is small, then increase smaller pointer
			if n[x]+n[y] < target:  x += 1
	  
		return [x+1,y+1]
```
# Java
```java
class Solution {
	public int[] twoSum(int[] n, int target) {
		// Pointer
		int x=0, y=n.length-1;
	
		// Iterate overloop
		while ( n[x]+n[y] != target ) {
			// It sum is large, then decrease greater pointer
			if (n[x]+n[y] > target) { y--; }
			// It sum is small, then increase smaller pointer
			if (n[x]+n[y] < target) { x++; }
		}
		
		return new int[]{x+1, y+1};
	}
}
```
