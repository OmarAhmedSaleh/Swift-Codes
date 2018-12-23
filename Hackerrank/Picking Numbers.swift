import Foundation


func pickingNumbers(a: [Int]) -> Int {
  var cnt = [Int](repeating: 0 , count : 101)
  for e in a{
    cnt[e] += 1
  }
  var mx = 0
  for i in 1..<100{
    mx = cnt[i] + cnt[i + 1] > mx ? cnt[i] + cnt[i + 1] : mx
  }
  return mx

}
