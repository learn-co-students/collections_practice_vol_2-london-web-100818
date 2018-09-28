# your code goes here
def begins_with_r(tools)
  tools.all? { |tool|
    tool.start_with?('r')
  }
end

def contain_a(elements)
  elements.select { |element| element.include? 'a' }
end

def first_wa(array)
  array.find { |item| item.to_s.start_with?('wa')}
end

def remove_non_strings(array)
  array.keep_if { |element| element.is_a? String}
end

def count_elements(array)
  array.each { |hash|
    hash[:count] = 0

    array.each { |compare_hash|
      if hash[:name] == compare_hash[:name]
        hash[:count] += 1
      end
    }
  }

  array.uniq
end

def merge_data(keys, data)
  merged_data = []

  keys.each { |hash|
    data.each { |data_hash|
      data_hash.each { |name, description_hash|
        if hash[:first_name] == name
          description_hash[:first_name] = name
          merged_data << description_hash
        end
      }
    }
  }

  merged_data
end

def find_cool(cool)
  cool.keep_if { |hash| hash[:temperature] == 'cool' }
end

def organize_schools(schools)
  schools_by_city = {}

  schools.each { |school, description_hash|
    schools_by_city[description_hash[:location]] = []
  }

  schools.each { |school, description_hash|
    schools_by_city[description_hash[:location]] << school
  }

  schools_by_city
end
