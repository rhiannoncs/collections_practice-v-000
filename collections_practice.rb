def sort_array_asc(integer_array)
  integer_array.sort
end

def sort_array_desc(integer_array)
  integer_array.sort do |a, b|
    if a == b
      0 
    elsif a < b 
      1
    elsif a > b
      -1
    end
  end
end

def sort_array_char_count(string_array)
  string_array.sort do |a, b|
    a.length <=> b.length
  end
end

def swap_elements(array)
  array.insert(1, array.delete_at(2))
end

def swap_elements_from_to(array, index, destination_index)
  array.insert(destination_index, array.delete_at(index))
end

def reverse_array(array)
  array.reverse
end

def kesha_maker(string_array)
  kesha_array = []
  string_array.each do |string|
    string[2] = "$"
    kesha_array << string
  end
end

def find_a(string_array)
  string_array.select{|string| string.start_with?("a")}
end

def sum_array(integer_array)
  x = 0
  integer_array.each do |integer|
    x += integer
  end
  x
end

def sum_array_with_inject(integer_array)
  integer_array.inject(:+)
end

def add_s(string_array)
  string_array.each_with_index {|string, i| string << "s"} unless i == 1
end