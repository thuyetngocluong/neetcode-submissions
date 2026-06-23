class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var mapNum: [Int: [Int]] = [:]
        for idx in nums.indices {
            mapNum[nums[idx], default: []].append(idx)
        }

        for idx in nums.indices {
            let src = nums[idx]
            if let jIdx = mapNum[target - src]?.first(where: { $0 != idx } ) {
                return [idx, jIdx]
            }
        }

        return []
    }
}
