import Foundation


func breakingRecords(scores: [Int]) -> [Int] {
  if scores.count == 0{
    return [0,0]
  }
  var ret = [Int](repeating: 0 , count: 2)
  var mx = scores[0]
  var mn = scores[0]
  for i in scores.indices{
    if mx > scores[i]{
      ret[1] += 1
      mx = scores[i]
    }
    if mn < scores[i]{
      mn = scores[i]
      ret[0] += 1
    }
  }
  return ret
}
