# Python
```python
class NumArray:

	def __init__(self, nums: List[int]):
		self.array = []
		for i in range(len(nums)):
			if i > 0:
				self.array.append(nums[i]+self.array[-1])
			else:
				self.array.append(nums[i])

	def sumRange(self, i: int, j: int) -> int:
		return self.array[j] if i==0 else self.array[j]-self.array[i-1]


# Your NumArray object will be instantiated and called as such:
# obj = NumArray(nums)
# param_1 = obj.sumRange(i,j)
```
# Java
```java
class NumArray {
	int[] array;

	public NumArray(int[] nums) {
		array = new int[nums.length];
		for (int i=0; i<nums.length; i++) {
			if (i > 0) {
				array[i] = nums[i]+array[i-1];
			} else {
				array[i] = nums[i];
			}
		}
	}
	
	public int sumRange(int i, int j) {
		return i==0 ? array[j] : array[j]-array[i-1];
	}
}

/**
 * Your NumArray object will be instantiated and called as such:
 * NumArray obj = new NumArray(nums);
 * int param_1 = obj.sumRange(i,j);
 */
```
