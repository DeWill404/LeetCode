# Python
```python
class Solution:
	def removeElement(self, nums: List[int], val: int) -> int:
		i,j=0,len(nums)-1
		while j>0 and nums[j]==val:
			j-=1
		while i <= j:
			if nums[i]==val:
				nums[i]=nums[j]
				j-=1
			else:
				i+=1
		return i
```
# Java
```java
class Solution {
	public int removeElement(int[] nums, int val) {
		int i=0, j=nums.length-1;
		while (j>0 && nums[j]==val) { j--; }
		while (i <= j) {
			if (nums[i] == val) {
				nums[i] = nums[j];
				j--;
			} else {
				i++;
			}
		}
		return i;
	}
}
```
