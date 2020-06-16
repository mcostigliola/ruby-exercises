#Take the array with unordered numbers
numbers = [4,3,78,2,0,2]
# numbers = [2,3,4,78,1]

#define a bubble sort function
def bubble_sort(arr_unorder)
    arr_order = Array.new

#iterate the array with two variables
    arr_unorder.each do |n|

        #take index of iterated array element
        idx = arr_unorder.index(n).to_i

        #compare two variables
        #if the variable[idx] < variable[idx+1] don't change else invert the position

        if arr_unorder[idx] > arr_unorder[idx + 1]
            arr_order += [arr_unorder[idx + 1], arr_unorder[idx]]
            p arr_order
        else
            arr_order += [n, n[idx + 1]]
            p arr_order
        end
    end
    p arr_order
end    

p numbers

bubble_sort(numbers)
