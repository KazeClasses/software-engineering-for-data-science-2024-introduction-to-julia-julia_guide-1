module InsertionSort

using Test
using Random

function insertion_sort!(array::Array{Int, 1})
    array_size = size(array)[1]
    unsorted = true

    while unsorted
        swapped = false

        for i in 1:array_size - 1
            if array[i+1] < array[i]
                array[i], array[i+1] = array[i+1], array[i]
                swapped = true
            end
        end

        if !swapped
            unsorted = false
        end
    end

    return array
end

function check_sort(N::Int = 100)
    array = collect(1:N)
    shuffle!(array)
    insertion_sort!(array)
    return array == collect(1:N)
end

export insertion_sort!, check_sort
end
