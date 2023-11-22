function find_pairs(numbers, target_sum)
    pairs = []
    seen = Set()
    for num in numbers
        complement = target_sum - num
        if complement in seen
            push!(pairs, (complement, num))
        end
        push!(seen, num)
    end
    return pairs
end

# Example usage
numbers = [1, 3, 8, 12, 7, 11, 9, 4, 2, 10, 5]
target_sum = 12
println(find_pairs(numbers, target_sum))