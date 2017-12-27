require 'pry'

class MergeSort
  def sort(collection)
    return collection if collection.length == 1

    half = collection.length / 2
    left = collection.take(half)
    right = collection.drop(half)

    sorted_left = sort(left)
    sorted_right = sort(right)

    merge(sorted_left, sorted_right)
  end

  def merge(left, right)
    sorted = []
    until left.empty? || right.empty?
      if left[0] <= right[0]
        sorted << left.shift
      else
        sorted << right.shift
      end
    end
    return sorted.concat(left, right)
  end
end
