// A phrase is a palindrome if, after converting all uppercase letters into 
// lowercase letters and removing all non-alphanumeric characters, 
// it reads the same forward and backward. 
// Alphanumeric characters include letters and numbers.
// 
// Given a string s, return true if it is a palindrome, or false otherwise.

func isPalindrome(_ s: String) -> Bool {
    var text = s.lowercased()
    text = text.filter({$0.isLetter || $0.isNumber})

    guard text.count >= 1 else { return true }
    
    var head = text.startIndex
    var tail = text.index(before: text.endIndex)
    while head < tail {
        if text[head] != text[tail] {return false}
        head = text.index(after: head)
        tail = text.index(before: tail)
    }

    return true
}

// Fastest answers on Leetcode converted to array and only ran alphanumeric
// checks on an as-needed basis rather than running .filter() or .lowercased()
// against the entire string. I believe my answer is more straightfoward
// to read and still plenty performant for most cases.