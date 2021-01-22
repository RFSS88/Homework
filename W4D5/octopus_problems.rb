def longest_fish(arr) 
    longest = ""
    
    arr.each do |ele1, i1|
        arr.each do |ele2, i2|
            if ele1.length > ele2.length && !longest.include?(ele1) 
                longest = ele1
            end
        end
    end
    longest 
end

def dominannt_octo(arr)
    arr.sort_by {|fish| fish.length}.last
end

def clever_octo(arr)
    longest = arr.first
    arr.each {|fish| longest = fish if fish.length > longest.length}
    longest
end

def slow_dance(str, arr)
    arr.each.with_index {|tentacle, index| return index if str == tentacle}
end

def fast_dance(str,arr)
    7.times {|i| return i if str == arr[i]}
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

p longest_fish(fishes)
p dominannt_octo(fishes)
p clever_octo(fishes)
p slow_dance("up", tiles_array)
p slow_dance("right-down", tiles_array)
p fast_dance("left-up", tiles_array)
p fast_dance("right-down", tiles_array)