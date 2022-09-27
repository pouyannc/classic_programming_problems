def swap_elements (array, i, j)
    array[i], array[j] = array[j], array[i]
    array
end

def bubble_sort (array)
    final_index = array.length-1
    sorted = 0
    until sorted == final_index do
        (0..final_index-sorted-1).each do |i|
            array = swap_elements(array, i, i+1) if array[i] > array[i+1]
        end
        sorted += 1
    end
    array
end

p bubble_sort([4,3,78,2,0,2])