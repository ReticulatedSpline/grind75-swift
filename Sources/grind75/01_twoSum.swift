
func runTwoSum() {
    print(twoSum([2,7,11,15], 9))
}

// my implementation
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var result = [Int]()

    for i in 0...nums.count {
        for j in 0...nums.count {
            
            if i == j {
                continue
            }

            if nums[i] + nums[j] == target {
                result.append(i)
                result.append(j)
                return result
            }
        }
    }

    return []
}
