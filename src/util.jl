function shuffle(array::Array{Int, 1})
    for i in 1:length(array)
        j = rand(1:i)
        array[i], array[j] = array[j], array[i]
    end
end

"""
Sorts the array in place using the insertion sort algorithm.
"""
function insertion_sort!(array::Array{Int, 1})
    for i in 2:length(array)
        key = array[i]
        j = i - 1
        while j > 0 && array[j] > key
            array[j + 1] = array[j]
            j -= 1
        end
        array[j + 1] = key
    end
end

function check_sort(N::Int = 100)
    array = collect(1:N)
    shuffle!(array)
    insertion_sort!(array)
    return array == collect(1:N)
end

export insertion_sort!, check_sort, shuffle
