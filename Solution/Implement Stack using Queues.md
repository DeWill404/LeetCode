# Python
```python
class MyStack:

	def __init__(self):
		"""
		Initialize your data structure here.
		"""
		self.queue = []

	def push(self, x: int) -> None:
		"""
		Push element x onto stack.
		"""
		self.queue.append(x)
		

	def pop(self) -> int:
		"""
		Removes the element on top of the stack and returns that element.
		"""
		return self.queue.pop()
		

	def top(self) -> int:
		"""
		Get the top element.
		"""
		return self.queue[-1]
		

	def empty(self) -> bool:
		"""
		Returns whether the stack is empty.
		"""
		return self.queue == []


# Your MyStack object will be instantiated and called as such:
# obj = MyStack()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.top()
# param_4 = obj.empty()
```
# Java
```java
import java.util.ArrayList;
import java.util.List;

class MyStack {

	List<Integer> queue;

	/** Initialize your data structure here. */
	public MyStack() {
		queue = new ArrayList<>();
	}
	
	/** Push element x onto stack. */
	public void push(int x) {
		queue.add(x);
	}
	
	/** Removes the element on top of the stack and returns that element. */
	public int pop() {
		return queue.remove(queue.size()-1);
	}
	
	/** Get the top element. */
	public int top() {
		return queue.get(queue.size()-1);
	}
	
	/** Returns whether the stack is empty. */
	public boolean empty() {
		return queue.size()==0;
	}
}

/**
 * Your MyStack object will be instantiated and called as such:
 * MyStack obj = new MyStack();
 * obj.push(x);
 * int param_2 = obj.pop();
 * int param_3 = obj.top();
 * boolean param_4 = obj.empty();
 */
```
