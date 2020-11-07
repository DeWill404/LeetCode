# Python
```python
# Definition for a binary tree node.
# class TreeNode:
#	 def __init__(self, val=0, left=None, right=None):
#		 self.val = val
#		 self.left = left
#		 self.right = right
class Solution:
	def recurr(self, node, val):
		if node:
			val = self.recurr(node.left, val) + self.recurr(node.right, val)
			if node.left and node.left.left==None and node.left.right==None:
				val += node.left.val
		return val

	def sumOfLeftLeaves(self, root: TreeNode) -> int:
		return self.recurr(root, 0)
```
# Java
```java
/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *	 int val;
 *	 TreeNode left;
 *	 TreeNode right;
 *	 TreeNode() {}
 *	 TreeNode(int val) { this.val = val; }
 *	 TreeNode(int val, TreeNode left, TreeNode right) {
 *		 this.val = val;
 *		 this.left = left;
 *		 this.right = right;
 *	 }
 * }
 */
class Solution {
	private int recurr(TreeNode node, int val) {
		if (node != null) {
			val = recurr(node.left, val) + recurr(node.right, val);
			if (node.left!=null && node.left.left==null && node.left.right==null)
				val += node.left.val;
		}
		return val;
	}


	public int sumOfLeftLeaves(TreeNode root) {
		return recurr(root, 0);
	}
}
```
