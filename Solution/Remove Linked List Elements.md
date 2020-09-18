# Python
```python
# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
	def removeElements(self, head: ListNode, val: int) -> ListNode:
		if not head or (not head.next and head.val==val):
			return None

		l = ListNode(next=head)
		while l.next:
			if l.next.val == val:
				if l.next == head:
					head = l.next.next
				l.next = l.next.next
			else:
				l = l.next
		
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
	public ListNode removeElements(ListNode head, int val) {
		if ( head==null || (head.next==null && head.val==val) ) {
			return null;
		}
		
		ListNode temp = new ListNode(0, head);
		while ( temp.next != null ) {
			if ( temp.next.val == val ) {
				if ( temp.next == head ) { head = temp.next.next; }
				temp.next = temp.next.next;
			} else {
				temp = temp.next;
			}
		}
		
		return head;
	}
}
```
