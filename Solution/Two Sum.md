# Python
```py
class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:

		# Make dictionary of nums element and their index
        D = dict( (nums[i], i) for i in range(len(nums)) )

        for i in range(len(nums)):
			# Find complement of nums[i]
            complement = target-nums[i]
            
			# Check if complement is present in dictionary
			# 	and index of complement and i are not same
            if complement in D and D[complement]!=i:
                return [ i, D[complement] ]
```
# Java
```java
import java.util.ArrayList;

class Solution {
    public int[] twoSum(int[] nums, int target) {
		
		// List to store array
		ArrayList<Integer> list = new ArrayList<>();
		// Count to check if two half of target is present
		int count = 0;		
		// Output Array
		int[] arr = new int[2];

		// set element to list
		for (int i=0; i<nums.length; i++) {
			// check if two half is persent
			if ( target%2==0 && nums[i]==target/2 && count<2 ) { arr[count++] = i; }
			list.add( nums[i] );
		}

		// If 2 half is not present, then check for other no.
		if ( count != 2 ) {
			for(int i=0; i<nums.length; i++) {
				count = target - nums[i];
				if ( list.contains(count) && count!=nums[i] ) {
					arr[0] = i;
					arr[1] = list.indexOf(count);
					return arr;
				}
			}
		}
		return arr;
	}
}
```