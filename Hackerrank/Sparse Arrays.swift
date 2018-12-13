// https://www.hackerrank.com/challenges/sparse-arrays/problem
import Foundation

// Complete the matchingStrings function below.
func matchingStrings(strings: [String], queries: [String]) -> [Int] {
  var occ: [String:Int] = [String:Int]()
  var ret: [Int] = [Int]()
  for s in strings {
    let cnt = occ[s] == nil ? 1 : occ[s]! + 1
    occ[s] = cnt
  }
  for q in queries{
    let cnt = occ[q] == nil ? 0 : occ[q]!
    ret.append(cnt)
  }
  return ret
}
