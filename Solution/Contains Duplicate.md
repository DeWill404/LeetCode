# Python
```python
class Solution:
	def containsDuplicate(self, nums: List[int]) -> bool:
		nums.sort()
		
		i = 0
		while i < len(nums):
			j = i+1
			if j<len(nums) and nums[i]==nums[j]:
				return True
			i = j
			
		return False
```
# Java
```java
import java.util.Arrays;

class Solution {
	public boolean containsDuplicate(int[] nums) {
		Arrays.sort(nums);

		int i=0;
		while (i < nums.length) {
			int j = i+1;
			if (j<nums.length && nums[i]==nums[j]) {
				return true;
			}
			i = j;
		}
		return false;
	}
}
```
