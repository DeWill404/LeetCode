# Python
```python
class MinStack:

    def __init__(self):
        """
        initialize your data structure here.
        """
        self.stack = []	# Stack Variable
        self.currMin = None	# Current Min pointer
        self.prevMin = []	# List to store stack in assending order
        
    def push(self, x: int) -> None:
        self.stack.append(x)
		# If current is set and is >= then input
        if self.currMin!=None and x<=self.currMin:
            self.prevMin.append(self.currMin)	# Set currentMin to List
            self.currMin = x	# Reset currentMin with input
		# If current is not set
        else:
            self.currMin = x

        
    def pop(self) -> None:
		# Top is minimum in stack
        if self.top() == self.currMin:
            self.currMin = self.prevMin.pop()
        self.stack.pop()        

        
    def top(self) -> int:
        return self.stack[-1]

    
    def getMin(self) -> int:
        return self.currMin


# Your MinStack object will be instantiated and called as such:
# obj = MinStack()
# obj.push(x)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.getMin()
```
# Java
```java
class MinStack {

	List<Integer> stack;	// Stack Variable
	List<Integer> prevMin;	// List to store stack in assending order
	int currMin;	// Current Min pointer

	/** initialize your data structure here. */
	public MinStack() {
		// Set list to empty
		stack = new ArrayList<>();
		prevMin = new ArrayList<>();
		// Set curent Min to MAX
		currMin = Integer.MAX_VALUE;
	}

	public void push(int x) {
		stack.add(x);
		// CurrentMin is >= to input
		if ( x <= currMin ) {
			prevMin.add(currMin);
			currMin = x;
		}
	}

	public void pop() {
		// Top is minimum of stack
		if ( currMin == top() ) {
			currMin = prevMin.get(prevMin.size()-1);
			prevMin.remove(prevMin.size()-1);
		}
		stack.remove(stack.size()-1);
	}

	public int top() {
		return stack.get(stack.size()-1);
	}

	public int getMin() {
		return currMin;
	}
}

/**
 * Your MinStack object will be instantiated and called as such:
 * MinStack obj = new MinStack();
 * obj.push(x);
 * obj.pop();
 * int param_3 = obj.top();
 * int param_4 = obj.getMin();
 */
```
