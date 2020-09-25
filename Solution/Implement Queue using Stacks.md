# Python
```python
class MyQueue:

	def __init__(self):
		"""
		Initialize your data structure here.
		"""
		self.stack = []
		

	def push(self, x: int) -> None:
		"""
		Push element x to the back of queue.
		"""
		self.stack.append(x)
		

	def pop(self) -> int:
		"""
		Removes the element from in front of queue and returns that element.
		"""
		return self.stack.pop(0)
		

	def peek(self) -> int:
		"""
		Get the front element.
		"""
		return self.stack[0]
		

	def empty(self) -> bool:
		"""
		Returns whether the queue is empty.
		"""
		return self.stack==[]
		


# Your MyQueue object will be instantiated and called as such:
# obj = MyQueue()
# obj.push(x)
# param_2 = obj.pop()
# param_3 = obj.peek()
# param_4 = obj.empty()
```
# Java
```java
import java.util.ArrayList;
import java.util.List;

class MyQueue {

	List<Integer> stack;

	/** Initialize your data structure here. */
	public MyQueue() {
		stack = new ArrayList<>();
	}
	
	/** Push element x to the back of queue. */
	public void push(int x) {
		stack.add(x);
	}
	
	/** Removes the element from in front of queue and returns that element. */
	public int pop() {
		return stack.remove(0);
	}
	
	/** Get the front element. */
	public int peek() {
		return stack.get(0);
	}
	
	/** Returns whether the queue is empty. */
	public boolean empty() {
		return stack.size()==0;
	}
}

/**
 * Your MyQueue object will be instantiated and called as such:
 * MyQueue obj = new MyQueue();
 * obj.push(x);
 * int param_2 = obj.pop();
 * int param_3 = obj.peek();
 * boolean param_4 = obj.empty();
 */
```
