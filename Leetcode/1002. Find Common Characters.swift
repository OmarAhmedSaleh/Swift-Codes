class Solution {
    func commonChars(_ A: [String]) -> [String] {
      var cnt = [Character : Int]()
      var mn = [Character : Int]()
      var ret = [String]()
      var idx = 0
      for str in A{
        for c in str{
          if cnt[c] == nil{
            cnt[c] = 0
          }
          cnt[c] = cnt[c]! + 1
        }
        if idx == 0 {
          mn = cnt
        }
        for key in mn.keys{
          if cnt[key] == nil{
            mn[key] = nil
          }
        }
        for key in cnt.keys{
          if mn[key] != nil{
            mn[key] = min(mn[key]! , cnt[key]!)
          }
        }
        idx += 1
        cnt.removeAll()
      }
      for key in mn.keys{
        var rep = mn[key]!
        while rep > 0{
          rep -= 1
          ret.append(String(key))
        }
      }
     
     return ret   
    }
}
