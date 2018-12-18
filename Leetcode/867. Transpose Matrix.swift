class Solution {
    func transpose(_ A: [[Int]]) -> [[Int]] {
      var r = A.count
      var c = A[0].count
      var ret: [[Int]] = [[Int]]()
      for i in 0..<c{
        ret.append([Int]())
        for j in 0..<r{
          ret[i].append(0)
        }
      }
      for i in 0..<r{
        for j in 0..<c{
          ret[j][i] = A[i][j]
        }
      }
      return ret
    }
}
