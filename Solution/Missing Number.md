# Python
```python
class Solution:
	def missingNumber(self, nums: List[int]) -> int:
		return len(nums)*(len(nums)+1)//2 - sum(nums)
```
# Java
```java
class Solution {
	public int missingNumber(int[] nums) {
		int sum = nums.length*(nums.length+1)/2;
		for (int i=0; i<nums.length; i++) { sum -= nums[i]; }
		return sum;
	}
}
```
