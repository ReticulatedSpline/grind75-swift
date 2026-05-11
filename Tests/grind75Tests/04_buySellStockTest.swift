import Testing
@testable import grind75

@Suite("04_buySellStockTest")
struct buySellStockTest {

    @Test func example1() {
        let result = maxProfit([7,1,5,3,6,4])
        #expect(result == 5)
    }

    @Test func example2() {
        let result = maxProfit([7,6,4,3,1])
        #expect(result == 0)
    }
}