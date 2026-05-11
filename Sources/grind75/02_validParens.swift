// Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

// An input string is valid if:
// Open brackets are closed by the same type of brackets.
// Open brackets are closed in the correct order.
// Every close bracket has a corresponding open bracket of the same type.

func isValidParens(_ s : String) -> Bool {
    var charStack: [Character] = []
    let openParens = "([{"
    let closeParens = ")]}"

    for char in s {

        // we can always accept new open parens
        if openParens.contains(char) {
            charStack.append(char)
            continue
        }

        // else it must be a close paren
        // an empty stack makes in invalid immediately  
        if (charStack.isEmpty) {
            return false
        }

        // we can pop stack if the last char was a matching open paren
        if openParens.firstIndex(of: charStack.last!) == closeParens.firstIndex(of: char) {
            charStack.removeLast()
        } else {
            // else it is an invalid string
            return false
        }
    }

    return charStack.isEmpty
}