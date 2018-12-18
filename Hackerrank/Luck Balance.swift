import Foundation

// Complete the luckBalance function below.
func luckBalance(k: Int, contests: [[Int]]) -> Int {
  var ret = 0
  var imp = [Int]()
  for c in contests{
    if c[1] == 1{
      imp.append(c[0])
    }else{
      ret += c[0]
    }
  }
  if imp.count > 0{
    imp = imp.sorted(by: {$0 > $1})
  }
  var rem = k
  for c in imp{
    if rem > 0{
      rem -= 1
      ret += c
    }else{
      ret -= c
    }
  }
  return ret
}
