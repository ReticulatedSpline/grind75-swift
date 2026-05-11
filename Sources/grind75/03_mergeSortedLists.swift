// This class is provided but not editable.
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

// You are given the heads of two sorted linked lists list1 and list2.
// Merge the two lists into one sorted list by splicing together 
// the nodes of the first two lists. Return the head of the merged linked list.

func mergeSortedLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {

    guard let l1 = list1 else { return list2 }
    guard let l2 = list2 else { return list1 }

    if l1.val <= l2.val {
        l1.next = mergeSortedLists(l1.next, list2)
        return l1
    } else {
        l2.next = mergeSortedLists(list1, l2.next)
        return l2
    }
}