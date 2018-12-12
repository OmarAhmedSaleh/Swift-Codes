// https://www.hackerrank.com/challenges/special-palindrome-again/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=strings&h_r=next-challenge&h_v=zen&h_r=next-challenge&h_v=zen
import Foundation

// Complete the substrCount function below.
func substrCount(n: Int, s: String) -> Int {
  var pre: [Int] = [Int](repeating: 0 , count: n)
  var suf = pre
  var charArray: [Character] = [Character]()
  var subSeq = 0
  for c in s{
    charArray.append(c)
  }
  for i in 0..<n{
    if i > 0 && charArray[i] == charArray[i - 1]{
      suf[i] = suf[i - 1]
    }
    suf[i] += 1
  }
  for i in 0..<n {
    let idx = n - 1 - i
    if i > 0 && charArray[idx] == charArray[idx + 1]{
      pre[idx] = pre[idx + 1]
      }
      pre[idx] += 1
  }
  for i in 1..<n - 1  {
    subSeq += pre[i]
    if charArray[i] != charArray[i + 1] && charArray[i + 1] == charArray[i - 1]{
      subSeq += (suf[i - 1] < pre[i + 1]) ? suf[i - 1] : pre[i + 1]
    }
  }
  subSeq += pre[0]
  if n > 1 {
    subSeq += 1
  }
  return subSeq
  }
