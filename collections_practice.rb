def begins_with_r(array)
  
array.all? {|z| z[0] == "r"}
end

def contain_a(array)
  array.select {|x| x.include?("a")}
end

def first_wa(array)
  array.find {|x| x[0..1] == "wa"}
end

def remove_non_strings(array)
  array.delete_if {|x| x.class != String}
end

def count_elements(array)
  

array.map do
  |x| x[:count] = array.count(x)

end

array.uniq do |y| y.first end

  end

def merge_data(a,b)
  
  newarray = []
  
  a.each do |key1_name|
   
  b.each do |key2|
  key2.each do |key2_name, details|
  
    
 if key1_name.values.join("") == key2_name
   
   newarray.push(details)
   
   newarray[-1].merge!(key1_name)

end

end

end
end

return newarray
end

def find_cool(array)
 array.delete_if {|x| x[:temperature] != "cool"}
  
end

def organize_schools(array)
  newarray = Hash.new
  array.each do
  |schoolname,location| 
  newarray[location.values.join("")] = []
  
  
end

newarray.each do |x,y| 
  
 array.each do
  |schoolname, location| 

 if x == location.values.join("")
   
newarray[x].push(schoolname)

 
end

end
end
newarray
end