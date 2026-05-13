import Testing
@testable import grind75

extension TreeNode: Equatable {
    public static func == (t1: TreeNode, t2: TreeNode) -> Bool {
        guard t1.val == t2.val else { return false }
        
        var leftEqual = true
        if (t1.left != nil && t2.left != nil) {
            leftEqual = t1.left == t2.left
        }
        
        var rightEqual = true
        if (t1.right != nil && t2.right != nil) {
            rightEqual = t1.right == t2.right
        }
        
        return leftEqual && rightEqual
    }
}



@Suite("06_invertBinaryTree")
struct invertBinaryTreeTest {

    private func treeFactory(_ arr: [Int]) -> TreeNode? {
        
        if arr.isEmpty {return nil}
        
        var values = arr
        let root = TreeNode(values.removeFirst())
        var queue: [TreeNode] = [root]
        
        while !values.isEmpty && !queue.isEmpty {
            let node = queue.removeFirst()

            if !values.isEmpty{
                node.left = TreeNode(values.removeFirst())
                queue.append(node.left!)
            }

            if !values.isEmpty {
                node.right = TreeNode(values.removeFirst())
                queue.append(node.right!)
            }
        }

        return root
    }


    @Test func example1() {
        let result = invertTree(treeFactory([4,2,7,1,3,6,9]))
        let expected = treeFactory([4,7,2,9,6,3,1])
        #expect(result == expected)
    }

    @Test func example2() {
        let result = invertTree(treeFactory([2,1,3]))
        let expected = treeFactory([2,3,1])
        #expect(result == expected)
    }

    @Test func example3() {
        let result = invertTree(treeFactory([]))
        let expected = treeFactory([])
        #expect(result == expected)
    }
}