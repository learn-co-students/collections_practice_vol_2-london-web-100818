def begins_with_r(array)
  count = array.count {|element| element.start_with?("r")}
  if(count == array.size)
    true
  else
    false
  end
end

def contain_a(array)
  array.select {|element| element.include? "a"}
end

def first_wa(array)
  new_array = array.select {|element| element.to_s.start_with?("wa")}
  new_array.first
end

def remove_non_strings(array)
  array.select {|element| element.is_a? String}
end

def count_elements(array)
  count = 0
  new_array = []
  array.each do |element|
    new_array[count] = {:count => array.count(element)}
    new_array[count].merge!(element)
    count += 1
  end
  new_array.uniq
end

def merge_data(keys, data)
  keys.each do |key|
    data.each do |info|
      if(info.has_key?(key[:first_name]))
        name = key[:first_name]
        key.merge!(info[name])
      end
    end
  end
end

def find_cool(cool)
  cool.select {|element| element.has_value?("cool")}
end

def organize_schools(schools)
  new_hash = {}
  schools.each do |key, value|
    location = value[:location]
    if(!new_hash.has_key?(location))
      new_hash[location] = [key]
    else
      new_hash[location] << key
    end
  end
  new_hash
end
