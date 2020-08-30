# Python
```python
# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
	def deleteDuplicates(self, head: ListNode) -> ListNode:
		# If List is empty or contain only 1 node
		if not(head and head.next): return head

		temp = head
		# Remove duplicated nodes
		while temp:
			# While next node is same as current
			while temp.next and temp.val == temp.next.val:
				temp.next = temp.next.next
			temp = temp.next
			
		return head
```
# Java
```java
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode() {}
 *     ListNode(int val) { this.val = val; }
 *     ListNode(int val, ListNode next) { this.val = val; this.next = next; }
 * }
 */
class Solution {
	public ListNode deleteDuplicates(ListNode head) {
		// If List is empty or contain only 1 node
		if ( head==null || head.next==null ) { return head; }
		
		ListNode temp = head;
		// Remove duplicated nodes
		while (temp != null) {
			// While next node is same as current
			while(temp.next!=null && temp.val==temp.next.val) { temp.next = temp.next.next; }
			temp = temp.next;
		}
		
		return head;
	}
}
```
