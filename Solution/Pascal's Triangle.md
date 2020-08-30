# Python
```python
class Solution:
	def generate(self, n: int) -> List[List[int]]:
		# Return empty lsit
		if n==0: return []

		# Return value of 1
		if n==1:    return [[1]]

		# Return value of 2
		if n==2:    return [[1],[1,1]]

		l=[[1]]	# Set list
		# Update row of pascal triangle till n
		for i in range(1,n):
			l.append([1]+[l[i-1][j]+l[i-1][j+1] for j in range(i-1)]+[1])
		return l
```
# Java
```java
import java.util.ArrayList;

class Solution {
	public List<List<Integer>> generate(int n) {
		// Initialize a 2d list
		List<List<Integer>> pascal = new ArrayList<List<Integer>>();
		
		// Returns empty list
		if (n == 0) { return pascal; }
		
		// Set list
		pascal.add(Arrays.asList(1));

		// Update row of pascal triangle till n
		for (int i=1; i<n; i++) {
			ArrayList<Integer> temp = new ArrayList<>();
			temp.add(1);
			for (int j=0; j<i-1; j++){temp.add(pascal.get(i-1).get(j)+pascal.get(i-1).get(j+1));}
			temp.add(1);
			pascal.add(temp);
		}
		return pascal;
	}
}
```
