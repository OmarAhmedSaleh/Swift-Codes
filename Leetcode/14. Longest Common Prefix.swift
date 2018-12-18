class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
      if strs.count == 0 {
        return ""
      }
      if strs.count == 1{
        return strs[0]
      }
      var cnt = [Set<Character>]()
      for s in strs {
        while cnt.count < s.count{
          cnt.append(Set<Character>())
        }
        var idx = 0
        for c in s{
          while cnt.count <= idx {
            cnt.append(Set<Character>())
          }
          cnt[idx].insert(c)
          idx += 1
        }
      }
      var mx = 0
      for s in cnt{
        if s.count > 1 {
          break
        }
        mx += 1
      }
      var ret: String = ""
      for s in strs {
        mx = mx > s.count ? s.count : mx
      }
      for c in strs[0]{
        if mx == 0 {
          break
        }
        ret.append(c)
        mx -= 1
      }
      return ret
    }
}
