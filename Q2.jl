function find_all_pairs(numbers)
    results = Dict()
    for i in 1:length(numbers)
        for j in (i+1):length(numbers)
            sum = numbers[i] + numbers[j]
            if !haskey(results, sum)
                results[sum] = []
            end
            push!(results[sum], (numbers[i], numbers[j]))
        end
    end
    return results
end

# Example usage
numbers = [1, 3, 8, 12, 7, 11, 9, 4, 2, 10, 5]
println(find_all_pairs(numbers))