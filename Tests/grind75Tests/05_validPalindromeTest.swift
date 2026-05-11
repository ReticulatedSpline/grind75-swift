import Testing
@testable import grind75

@Suite("05_validPalindrome")
struct validPalindromeTest {

    @Test func example1() {
        let result = isPalindrome("A man, a plan, a canal: Panama")
        #expect(result == true)
    }

    @Test func example2() {
        let result = isPalindrome("race a car")
        #expect(result == false)
    }

    @Test func example3() {
        let result = isPalindrome(" ")
        #expect(result == true)
    }
}