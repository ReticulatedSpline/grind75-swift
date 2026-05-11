import Testing
@testable import grind75

@Suite("validParensTest")
struct validParensTest {
    @Test func handlesEmptyString() async throws {
        let result = isValidParens("")
        #expect(result == true)
    }
}

