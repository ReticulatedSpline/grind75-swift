// You are given an array prices where prices[i] is the price of a 
// given stock on the ith day.
// 
// You want to maximize your profit by choosing a single day 
// to buy one stock and choosing a different day in the future to 
// sell that stock.
// 
// Return the maximum profit you can achieve from this transaction. 
// If you cannot achieve any profit, return 0.

func maxProfit(_ prices: [Int]) -> Int {
    var maxProfit = 0

    for i in 0..<prices.count {
        for j in (i + 1)..<prices.count {
            let profit = prices[j] - prices[i] 
            if profit > maxProfit {
                maxProfit = profit
            }
        }
    }
    
    return maxProfit;
}