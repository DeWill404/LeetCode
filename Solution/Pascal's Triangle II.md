# Python
```python
class Solution:
	def getRow(self, n: int) -> List[int]:
		# Cornor Cases
		if n==0: return [1]
		if n==1: return [1,1]

		# Update Value
		res = [1,2,1]
		for i in range(n-2):
			res = [x+y for x, y in zip([0] + res, res+ [0])]
		return res
```
# Java
```java
class Solution {
	public List<Integer> getRow(int n) {
		// Initialize a 2d list
		List<Integer> pascal = new ArrayList<>();
		pascal.add(1);
		// Cornor Case
		if (n == 0) { return pascal; }
		
		// Update Value
		for (int i=1;i<=n; i++) {
			pascal.add(0,0);
			for (int j=0; j<pascal.size()-1; j++) {
				pascal.set(j, pascal.get(j)+pascal.get(j+1));
			}
		}
		return pascal;
	}
}
```
