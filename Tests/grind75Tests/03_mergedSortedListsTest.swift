import Testing
@testable import grind75

extension ListNode: Equatable {
    public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        var l: ListNode? = lhs
        var r: ListNode? = rhs

        while l != nil && r != nil {
            if lhs.val != rhs.val {
                return false
            }
            l = l?.next
            r = r?.next
        }
        return l == nil && r == nil
    }
}

@Suite("03_mergeSortedListTests")
struct mergeSortedListsTests {

    func nodeListFactory(arr: [Int]) -> ListNode? {
        var tail = ListNode()
        let head = tail
        for int in arr {
            tail.next = ListNode(int)
            tail = tail.next!
        }
        return head.next
    }

    @Test func example1() {
        let l1 = nodeListFactory(arr: [1, 2, 4])
        let l2 = nodeListFactory(arr: [1, 3, 4])
        let result = mergeSortedLists(l1, l2)
        #expect(result == nodeListFactory(arr: [1,1,2,3,4,4]))
    }

    @Test func example2() {
        let result = mergeSortedLists(nil, nil)
        #expect(result == nil)
    }

    @Test func example3() {
        let l1: ListNode? = nil
        let l2: ListNode? = ListNode(0)
        let result = mergeSortedLists(l1, l2)
        #expect(result == ListNode(0))
    }
}

