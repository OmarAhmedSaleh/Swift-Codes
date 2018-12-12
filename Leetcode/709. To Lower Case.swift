/*
Implement function ToLowerCase() that has a string parameter str, and returns the same string in lowercase.
Example
Input: "Hello"
Output: "hello"

Input: "Hello"
Output: "hello"

Input: "Hello"
Output: "hello"
*/
class Solution {
    func toLowerCase(_ str: String) -> String {
      var lowerCaseString : String = ""
      var index : UInt32  = 0
      for char in str{
        index = UnicodeScalar(String(char))!.value
       // print(index)
        // A = 65 && Z = 90
        // a = 97 && z = 122
        if index < 91 && index >= 65{
          index -= 65
          lowerCaseString.append(Character(UnicodeScalar(index + 97)!))
        }else{
          lowerCaseString.append(char)
        }
      }
      return lowerCaseString
    }
}
