#Take the array with unordered numbers
numbers = [4,3,78,2,0,2]
# numbers = [2,3,4,78,1]
#define a bubble sort function
def bubble_sort(arr_unorder)
    arr_order = Array.new
#iterate the array with two variables
    arr_unorder.each do |n|
        idx = arr_unorder.index(n).to_i
#compare two variables
#if the variable[idx] < variable[idx+1] don't change else invert the position
        if arr_unorder[idx] < arr_unorder[idx + 1]
            puts "E' minore"
            arr_order += [arr_unorder[idx], arr_unorder[idx + 1]]
        else
            puts "Greater"
            arr_order += [arr_unorder[idx - 1], arr_unorder[idx + 1]]
        end
    end
    p arr_order
end    

bubble_sort(numbers)
