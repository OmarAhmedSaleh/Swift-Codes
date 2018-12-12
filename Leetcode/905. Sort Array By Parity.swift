/*
Problems :
Given an array A of non-negative integers, 
return an array consisting of all the even elements of A,
followed by all the odd elements of A.

You may return any answer array that satisfies this condition.

Examples : 
Input: [3,1,2,4]
Output: [2,4,3,1]
The outputs [4,2,3,1], [2,4,1,3], and [4,2,1,3] would also be accepted.

*/
class Solution {
    func sortArrayByParity(_ A: [Int]) -> [Int] {
      var retArray: [Int] = [Int]()
      for e in A{
        if e % 2 == 0{
          retArray.append(e)
        }
      }
      for e in A {
        if e & 1 == 1{
          retArray.append(e)
        }
      }
      return retArray
    }
}
