// https://www.hackerrank.com/challenges/sherlock-and-valid-string/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=strings&h_r=next-challenge&h_v=zen
import Foundation

// Complete the isValid function below.
func isValid(s: String) -> String {
  var cnt: [Int] = [Int]()
  var occ : [Int] = [Int]()
  for i in 0..<26 {
    cnt.append(0)
  }
  for c in s {
    let ascii = (UnicodeScalar(String(c))?.value)!
    cnt[Int(ascii) - 97] += 1
  }
  for i in 0..<26 {
    if cnt[i] != 0 {
      occ.append(cnt[i])
    }
  }
  occ = occ.sorted()
  let sz = occ.count
  if occ[0] == occ[sz - 1]{
    return "YES"
  }
  if occ[0] == occ[ sz - 2 ] && (occ[0] + 1 == occ[sz - 1]){
    return "YES"
  }
  if occ[sz - 1] == occ[1] && occ[0] == 1 {
    return "YES"
  }
  return "NO"
}
