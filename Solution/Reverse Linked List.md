# Python
```python
# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
	def reverseList(self, head: ListNode) -> ListNode:
		if head==None or head.next==None:
			return head
		
		t1 = head
		head = head.next
		t1.next = None
		while head.next:
			t2 = head.next
			head.next = t1
			t1 = head
			head = t2
		head.next = t1
		
		return head
```
# Java
```java
/**
 * Definition for singly-linked list
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode() {}
 *     ListNode(int val) { this.val = val; }
 *     ListNode(int val, ListNode next) { this.val = val; this.next = next; }
 * }
 */
class Solution {
	public ListNode reverseList(ListNode head) {
		
		if (head==null || head.next==null) {
			return head;
		}

		ListNode t1 = head;
		head = head.next;
		t1.next = null;
		while (head.next  != null) {
			ListNode t2 = head.next;
			head.next = t1;
			t1 = head;
			head = t2;
		}
		head.next = t1;

		return head;

	}
}
```
