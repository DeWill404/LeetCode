# Python
```python
class Solution:
	def containsNearbyDuplicate(self, nums: List[int], k: int) -> bool:
		d = {}
		for i in range(len(nums)):
			if nums[i] in d:
				if abs(i-d[nums[i]]) <= k:
					return True
			d[nums[i]] = i
		return False
```
# Java
```java
import java.util.HashMap;

class Solution {
	public boolean containsNearbyDuplicate(int[] nums, int k) {
		HashMap<Integer,Integer> dic = new HashMap<>();
		for (int i=0; i<nums.length; i++) {
			if (dic.containsKey(nums[i]) && Math.abs(i-dic.get(nums[i]))<=k) {
				return true;
			}
			dic.put(nums[i], i);
		}
		return false;
	}
}
```
