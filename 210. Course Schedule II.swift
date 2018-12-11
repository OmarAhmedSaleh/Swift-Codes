
/*
Problem :

There are a total of n courses you have to take, labeled from 0 to n-1.

Some courses may have prerequisites,
for example to take course 0 you have to first take course 1, which is expressed as a pair: [0,1]

Given the total number of courses and a list of prerequisite pairs, 
return the ordering of courses you should take to finish all courses.

There may be multiple correct orders, you just need to return one of them. 
If it is impossible to finish all courses, return an empty array.
Examples

Input: 2, [[1,0]] 
Output: [0,1]
Explanation: There are a total of 2 courses to take. To take course 1 you should have finished   
             course 0. So the correct course order is [0,1] 
             
             
Input: 4, [[1,0],[2,0],[3,1],[3,2]]
Output: [0,1,2,3] or [0,2,1,3]
Explanation: There are a total of 4 courses to take. To take course 3 you should have finished both     
             courses 1 and 2. Both courses 1 and 2 should be taken after you finished course 0. 
             So one correct course order is [0,1,2,3]. Another correct ordering is [0,2,1,3] .

*/
class Solution {
  struct Node{
    var nodes: [Int] = [Int]()
    var isSeen: Bool = false
    var isInStack: Bool = false
  }
  var graph: [Node] = [Node]()
  var order: [Int] = [Int]()
  var graphHasCycle: Bool = false
  func dfs(_ node: Int){
    graph[node].isInStack = true
    graph[node].isSeen = true
    for to in graph[node].nodes{
      if !graph[to].isSeen{
        dfs(to)
      }else{
        if graph[to].isInStack {
          graphHasCycle = true
          return
        }
      }
    }
    graph[node].isInStack = false
    order.append(node)
  }
  func addEdge(_ from: Int , _ to: Int){
    graph[from].nodes.append(to)
  }
    func findOrder(_ numCourses: Int, _ prerequisites: [[Int]]) -> [Int] {
      for i in 0...numCourses - 1{
        graph.append(Node())
      }
      var from : Int?
      var to : Int?
      for edge in prerequisites {
        from = edge[0]
        to = edge[1]
        addEdge(from!,to!)
      }
      for i in 0...numCourses - 1 {
        if !graph[i].isSeen{
          dfs(i)
        }
      }
      if graphHasCycle {
        return []
      }
      return order
    }
}
