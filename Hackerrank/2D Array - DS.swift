// https://www.hackerrank.com/challenges/2d-array/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=arrays
import Foundation

// Complete the hourglassSum function below.
func hourglassSum(arr: [[Int]]) -> Int {
  let dx = [0 , -1 , -1 , -1 , 1 , 1 , 1]
  let dy = [0 , -1 , 0 , 1 , -1 , 0 , 1]
  var mx = -100
  for i in 1...4 {
    for j in 1...4 {
      var sum = 0;
      for k in 0...6{
        sum += arr[i + dx[k]][j + dy[k]]
      }
      mx = mx < sum ? sum : mx
    }
  }
  return mx
}
