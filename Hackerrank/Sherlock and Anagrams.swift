// https://www.hackerrank.com/challenges/sherlock-and-anagrams/problem
import Foundation


func sherlockAndAnagrams(s: String) -> Int {
    var cnt: [String : Int] = [String : Int]()
    var arrString: [Character] = [Character]()
    var sortedArray: [Character] = [Character]()
    for c in s{
        arrString.append(c)
    }
    var sz : Int = s.count
    var subSeq: [Character] = [Character]()
    for i in 0..<sz {
        subSeq = [Character]()
        for j in i..<sz {
            subSeq.append(arrString[j])
            sortedArray = subSeq.sorted()
             if let occ = cnt[String(sortedArray)] {
                cnt[String(sortedArray)] = occ + 1
            }else{
             cnt[String(sortedArray)] = 1
            }
        }
    }
    var numOfPairs = 0
    for node in cnt{
        if let occ = cnt[node.key] {
            numOfPairs += (occ * (occ - 1)) / 2
        }
    }
    return numOfPairs
}
