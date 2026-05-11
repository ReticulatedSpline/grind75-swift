import Testing
@testable import grind75

@Suite("twoSumTests")
struct twoSumTests {
    @Test func example1() {
        let result = twoSum([2, 7, 11, 15], 9)
        #expect(result == [0, 1])
    }

    @Test func example2() {
        let result = twoSum([3, 2, 4], 6)
        #expect(result == [1, 2])
    }

    @Test func example3() {
        let result = twoSum([3, 3], 6)
        #expect(result == [0, 1])
    }
}
