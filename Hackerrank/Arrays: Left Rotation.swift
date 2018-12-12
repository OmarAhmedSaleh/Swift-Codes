// https://www.hackerrank.com/challenges/ctci-array-left-rotation/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=arrays&h_r=next-challenge&h_v=zen
import Foundation

// Complete the rotLeft function below.
func rotLeft(a: [Int], d: Int) -> [Int] {
  var ret: [Int] = [Int](repeating: 0 , count: a.count)
  var new_idx = 0
  for i in 0...(a.count - 1) {
    new_idx = i - d
    if new_idx < 0 {
      new_idx += a.count
    }
    ret[new_idx] = a[i]
  }
  return ret
}
