class Solution {
    func isMonotonic(_ A: [Int]) -> Bool {
      var inc: Bool = true
      var dec: Bool = true
      var mn: Int = 111111
      var mx: Int = -mn
      for e in A {
        if mn < e {
          inc = false
        }
        if mx > e {
          dec = false
        }
        mn = mn > e ? e : mn
        mx = mx < e ? e : mx
      }
      return inc || dec
    }
}
