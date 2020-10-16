# Python
```python
class Solution:
	def moveZeroes(self, nums: List[int]) -> None:
		"""
		Do not return anything, modify nums in-place instead.
		"""
		firstZero = -1
		
		for i in range(len(nums)):
			if nums[i]==0:
				if firstZero==-1:
					firstZero = i
			else:
				if firstZero != -1:
					nums[firstZero],nums[i] = nums[i],nums[firstZero]
					firstZero += 1
```
# Java
```java
class Solution {
	public void moveZeroes(int[] nums) {
		int firstZero = -1;
		for (int i=0; i<nums.length; i++) {
			if (nums[i] == 0) {
				if (firstZero == -1) { firstZero = i; }
			} else {
				if (firstZero != -1) {
					int temp = nums[firstZero];
					nums[firstZero] = nums[i];
					nums[i] =temp;
					firstZero++;
				}
			}
		}
	}
}
```
