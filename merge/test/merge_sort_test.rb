require 'minitest/autorun'
require 'minitest/pride'
require './merge/lib/merge_sort'

class MergeSortTest < Minitest::Test
  def test_it_sorts_an_array
    sorter = MergeSort.new
    collection = [4,2,8,6,0,5,1,7,3,9]

    assert_equal [0,1,2,3,4,5,6,7,8,9], sorter.sort(collection)
  end

  def test_it_sorts_another_array
    sorter = MergeSort.new

    assert_equal ["a", "b", "c", "d"], sorter.sort(["d", "b", "a", "c"])
  end
end
