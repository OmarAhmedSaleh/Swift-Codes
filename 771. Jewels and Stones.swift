// https://leetcode.com/problems/jewels-and-stones/description/
class Solution {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
      var numOfJewels: Int = 0
      var isJewel: [Character : Bool] = [Character : Bool]()
      for charJ in J{
        isJewel[charJ] = true
      }
      for charS in S{
       if let ok = isJewel[charS]{
         numOfJewels += 1
       }
      }
      return numOfJewels
    }
}
