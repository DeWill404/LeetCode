# Python
```python
class Solution:
	def majorityElement(self, nums: List[int]) -> int:
		nums.sort()	# Sort the list

		# Iterate from any end
		i = len(nums)-1
		while i >= 0:
			# Check till when it is repeating
			j = i-1
			while j>=0 and nums[i]==nums[j]:
				j -= 1
			# Check if length is more then half
			if i-j > len(nums)//2:
				return nums[i]
			i = j

		# Return 1st element
		return nums[i]
```
# Java
```java
class Solution {
	public int majorityElement(int[] nums) {
		Arrays.sort(nums);	// Sort the list
		
		// Return len/2 element
		// 	As repeation is ore then half,
		//	So middle will be answer
		return nums[nums.length/2];
	}
}
```
