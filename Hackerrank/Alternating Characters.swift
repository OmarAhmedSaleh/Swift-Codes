// https://www.hackerrank.com/challenges/alternating-characters/problem?h_l=interview&isFullScreen=false&playlist_slugs%5B%5D%5B%5D%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D%5B%5D%5B%5D=strings
import Foundation

// Complete the alternatingCharacters function below.
func alternatingCharacters(s: String) -> Int {
  var del = 0
  var seq = 0
  var char: Character?
  for c in s{
    if seq == 0 {
      seq = 1  
    }else{
      if c == char!{
        del += 1
      }else{
        seq = 1
      }
    }
    char = c
  }
  return del
}
