import Testing
@testable import grind75

@Suite("07_validAnagram")
struct validAnagramTest {

    @Test func example1() {
        var result = isAnagram(
            "anagram",
            "nagaram")
        #expect(result == true)

        result = isAnagramDict(
            "anagram",
            "nagaram")
        #expect(result == true)
    }

    @Test func example2() {
        var result = isAnagram(
            "rat",
            "car")
        #expect(result == false)

        result = isAnagramDict(
            "rat",
            "car")
        #expect(result == false)
    }
}