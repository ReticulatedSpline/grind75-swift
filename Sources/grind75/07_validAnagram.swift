//Given two strings s and t, return true if t is an of s, and false otherwise.

func isAnagram(_ s: String, _ t: String) -> Bool {
    // first, easy early exit...
    if (s.count != t.count) {return false}

    // then a O(logn) one-liner    
    return s.sorted() == t.sorted()
}

// alternatively, map to dict 
func isAnagramDict(_ s: String, _ t: String) -> Bool {
    
    if (s.count != t.count) {return false}
    
    var sdict = [Character: Int]()
    for char in s {
        sdict[char, default: 0] += 1
    }

    var tdict = [Character: Int]()
    for char in t {
        tdict[char, default: 0] += 1
    }

    // dict comparison is native
    return sdict == tdict
}