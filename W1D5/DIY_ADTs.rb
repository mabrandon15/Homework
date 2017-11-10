class Stack
  def initialize
    @stack = []
  end
  
  def add(el)
    @stack.push(el)
    el
  end
  
  def remove
    @stack.pop
  end
  
  def show
    @stack.dup
  end
end

class Queue
  def initialize
    @queue = []
  end
  
  def enqueue(el)
    @queue.push(el) 
    el 
  end
  
  def dequeue
    @queue.shift
  end
  
  def show
    @queue.dup
  end
end

class Map
  def initialize
    @map = []
  end
  
  def assign(key, value)
    pair_index = @map.index {|pair| pair[0] == key}
    pair_index ? @map[pair_index][1] = value : @map.push([key, value])
    [key, value]
  end

  def lookup(key)
    @map.each {|pair| return pair[1] if pair[0] == key}
    nil
  end

  def remove(key)
    @map.select! {|pair| pair[0] == key}
    nil
  end

  def show
    deep_dup(@map)
  end
  
  def deep_dup(arr)
    arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el}
  end
  
end


