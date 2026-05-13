public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() {
        self.val = 0
        self.left = nil
        self.right = nil
    }

    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }

    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

// Given the root of a binary tree, invert the tree, and return its root.
func invertTree(_ root: TreeNode?) -> TreeNode? {
    guard let r = root else { return nil }

    let temp = r.left
    r.left  = invertTree(r.right)
    r.right = invertTree(temp)
    
    return r
}