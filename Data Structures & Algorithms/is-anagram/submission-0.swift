class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var countS: [Character: Int] = [:]
        var countT: [Character: Int] = [:]

        if s.count != t.count {
            return false
        }

        for char in s {
            countS[char, default: 0] += 1
        }

        for char in t {
            countT[char, default: 0] += 1
        }


        for (k, v) in countS {
            if countS[k] != countT[k] {
                return false
            }
        }

        return true
    }
}
