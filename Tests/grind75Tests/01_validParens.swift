import Testing
@testable import grind75

@Suite("01_validParensTest")
struct validParensTest {
    @Test func example1() {
        let result = isValidParens("()")
        #expect(result == true)
    }

    @Test func example2() {
        let result = isValidParens("()[]{}")
        #expect(result == true)
    }

    @Test func example3() {
        let result = isValidParens("(]")
        #expect(result == false)
    }

    @Test func example4() {
        let result = isValidParens("([])")
        #expect(result == true)
    }

    @Test func example5() {
        let result = isValidParens("([)])")
        #expect(result == false)
    }
}

