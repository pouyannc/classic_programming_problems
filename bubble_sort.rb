def swap_elements (array, i, j)
    array[i], array[j] = array[j], array[i]
end

def bubble_sort (array)
    final_index = array.length-1
    (0..final_index-1).each do |i|
        swap_elements(array, i, i+1) if array[i] > array[i+1]
    end
end

bubble_sort([4,3,78,2,0,2])