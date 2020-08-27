# Python
```python
class Solution:
	def searchInsert(self, nums: List[int], target: int) -> int:
		# If list is empty
		if not nums:
			return 0
		
		# Find index
		for i in range(len(nums)):
			if target <= nums[i]:
				return i
		
		# If nums is greater then last element
		return len(nums)
```
# Java
```java
class Solution {
	public int searchInsert(int[] nums, int target) {
		// If list is empty
		if (nums.length == 0)
			return 0;
		
		// If nums is greater then last element
		if (target>nums[nums.length-1])
			return nums.length;
		for (int i=0;i<nums.length;i++)
			if (target <= nums[i]) 
				return i;
		return 0;
	}
}
```
