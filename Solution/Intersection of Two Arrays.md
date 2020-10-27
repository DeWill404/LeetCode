# Python
```python
class Solution:
	def intersection(self, nums1: List[int], nums2: List[int]) -> List[int]:
		return list(set(nums1).intersection(set(nums2)))
```
# Java
```java
import java.util.Arrays;
import java.util.HashSet;

class Solution {
	public int[] intersection(int[] nums1, int[] nums2) {
		HashSet<Integer> set1 = new HashSet<>();
		HashSet<Integer> set2 = new HashSet<>();
		
		for (int i=0; i<nums1.length; i++) { set1.add(nums1[i]); }
		for (int i=0; i<nums2.length; i++) { set2.add(nums2[i]); }
		
		set1.retainAll(set2);

		int[] arr = new int[set1.size()];
		int ptr = 0;
		for (Integer n : set1) { arr[ptr++] = n; }

		return arr;
	}
}
```
