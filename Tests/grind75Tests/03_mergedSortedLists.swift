import Testing
@testable import grind75

@Suite("mergeSortedLists")
struct mergeSortedListsTests {
@Test func handlesEmptyLists() {
    let result = mergeSortedLists(nil, nil)
    #expect(result == nil)
}
}

