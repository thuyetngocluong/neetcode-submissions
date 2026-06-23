class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        if nums.count <= 1 {
            return false
        }
        for idx in 0..<(nums.count-1) {
            for num in nums[(idx+1)...] {
                if num == nums[idx] {
                    return true
                }
            }
        }

        return false
    }
}
