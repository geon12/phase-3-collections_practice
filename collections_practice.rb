def sort_array_asc(array)
    array.sort
end

def sort_array_desc(array)
    array.sort do |a, b|
        if a == b
          0
        elsif a > b
          -1
        elsif a < b
          1
        end
    end
end

def sort_array_char_count(array)
    array.sort do |a, b|
        a.length <=> b.length
    end
end

def swap_elements(array)
    swap = array[1]
    array[1] = array[2]
    array[2] = swap
    array
end

def swap_elements_from_to(array, index, destination_index)
    swap = array[index]
    array[index] = array[destination_index]
    array[destination_index] = swap
    array
end

def reverse_array(array)
    array.reverse
end

def kesha_maker(array)
    
    array.each do |word| 
        word[2] = '$'
    end
    
end

def find_a(array)
    array.select {|string| string.start_with?("a")}
end

def sum_array(array)
    array.inject {|sum,num| sum + num}
end

def add_s(array)
    array.each_with_index.collect do |element, index| 
        element << "s" if index != 1 
        element
    end
end