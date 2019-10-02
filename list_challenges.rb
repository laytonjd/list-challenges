def threed(list, number)
    count = 0
    list.each do |n|
        if list[n] == list[n - 1] && n == 3
            return false
        end
        if n == number
            count += 1
        end
    end
    if count == 3
        return true
    else
        return false 
    end
end


# puts threed([3, 1, 4, 3, 1, 1, 3], 3) # true
# puts threed([3, 1, 3, 3, 3, 4], 3) # false
# puts threed([3, 1, 3, 3, 4, 4], 3) # false


def same_first_last(list)
    if list[0] == list[list.size - 1] && list.length >= 1
        return true
    end
    return false
end

# puts same_first_last([1, 2, 3, 1])
# puts same_first_last([1])
# puts same_first_last([1, 2, 3])
# puts same_first_last([])

def get_sandwhich(sandwhich)
    count = 0
    (sandwhich.size - 4).times do |i|
        slice = sandwhich[i..(i + 4)]
        puts slice
        if sandwhich[i, (i+4)] == "bread"
            count += 1
        end 
        if slice == "bread"
            puts slice
        end
    end
    return count 
end

#get_sandwhich("breadjoshisreallyaddictedtomariokartbread")

def shift_left(list)
    new_list = []
    x1 = 0
    x2 = list[0]
    slice1 = list[1..(list.size - 1)]
    x1 = slice1
    new_list.push(x1)
    new_list.push(x2)
    return new_list
end
    
# print shift_left([1,2, 3, 4, 5, 6])
# print shift_left([7, 8, 9, 10, 11, 12])


#puts shift_left([1, 2, 3, 4])

def g_happy(str)
    (str.size).times do |x|
        slice = str[x..(str.size + 1)]
        if slice == "gg"
            return true
        end
    end
end

# puts g_happy("fffffffggg")
# puts g_happy("fwuf")
# puts g_happy("ggg")

def merge(list1, list2)
    new_list = list1 + list2
    new_list.sort

end
list1 = [1,2,8]
list2 = [4, 9, 10]
#print merge(list1, list2)

def middle_way(list1, list2)
    sorted_list1 = list1.sort
    sorted_list2 = list2.sort 
    mid1 = sorted_list1[sorted_list1.size / 2]
    mid2 = sorted_list2[sorted_list2.size / 2]
    new_list = []
    new_list.push(mid1)
    new_list.push(mid2)
    new_list.sort
    return new_list
end

# print middle_way([1,2,3],[4,5,6])

def either_2_4(list)
    (list.size).times do |x|
        slice = list[x..(list.size + 1)]
        if slice == "22" || slice == "44"
                return true
        elsif slice == "22" && slice == "44"
                return false
        end
    end
    return false
end

puts either_2_4([1, 2, 2, 3, 5, 6]) # true
puts either_2_4([1, 2, 2, 3, 4, 4]) # false
puts either_2_4([1, 2, 3, 4, 4]) # true
puts either_2_4([1, 2, 3, 4]) # false