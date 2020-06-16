#Take the array with unordered numbers
numbers = [4,3,78,2,0,2]
holder = 0

# numbers = [2,3,4,78,1]

#define a bubble sort function
def bubble_sort(arr_unorder)
    arr_order = Array.new

#iterate the array with two variables
    arr_unorder.each_with_index do |n,idx|

        #take index of iterated array element
        # idx = arr_unorder.index(n).to_i

        #compare two variables
        #if the variable[idx] < variable[idx+1] don't change else invert the position
        if idx < arr_unorder.length - 1   
            if n > arr_unorder[idx + 1]
                holder = n
                arr_unorder[idx] = arr_unorder[idx + 1]
                arr_unorder[idx + 1] = holder
            end
        end
    end
    p arr_unorder
end    

bubble_sort(numbers)
