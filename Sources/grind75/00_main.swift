@main
struct grind75 {
    static func main() {
        print("Test case to run: ", terminator: "")
        // let input = readLine()
        // let parsed: Int? = Int(input!)
        let parsed = 2
        switch parsed {
            case 1: runTwoSum()
            case 2: runValidParens()
            default:
                print("Invalid choice.")
                return
        }
    }
}