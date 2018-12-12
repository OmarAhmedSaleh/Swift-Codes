// https://www.hackerrank.com/challenges/non-divisible-subset/problem

import Foundation


func nonDivisibleSubset(k: Int, S: [Int]) -> Int {
    var sz : Int = 0
    var cnt : [Int] = [Int]()
    for i in 0...k{
        cnt.append(0)
    }
    for e in S{
        cnt[e % k] += 1
    }
    sz = cnt[0] > 0 ? 1 : 0
    var i : Int = 1
    while i <= (k / 2){
        if i == (k / 2) && (k % 2 == 0){
            sz += cnt[i] > 0 ? 1 : 0
            break
        }
        sz += (cnt[i] > cnt[k - i] ? cnt[i] : cnt[k - i])
        i += 1
    }
    return sz

}
