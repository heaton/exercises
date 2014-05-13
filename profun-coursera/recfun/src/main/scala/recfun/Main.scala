package recfun

import common._

object Main {
  def main(args: Array[String]) {
    println("Pascal's Triangle")
    for (row <- 0 to 10) {
      for (col <- 0 to row)
        print(pascal(col, row) + " ")
      println()
    }
  }

  /**
   * Exercise 1
   */
  def pascal(c: Int, r: Int): Int = {
    if (c > r || c < 0 || r < 0) throw new IllegalArgumentException("Invalid input. c=" + c + ", r=" + r)
    if (c == r || c == 0 || r == 0) return 1
    else return pascal(c - 1, r) + pascal(c, r - 1)

  }

  /**
   * Exercise 2
   */
  def balance(chars: List[Char]): Boolean = {
    def recBalance(str: List[Char], count: Int): Boolean = {
      if (str.isEmpty) return count == 0
      if (count < 0) return false
      val diff = if (str.head == '(') 1 else if (str.head == ')') -1 else 0
      return recBalance(str.tail, count + diff)
    }
    return recBalance(chars, 0)
  }

  /**
   * Exercise 3
   */
  def countChange(money: Int, coins: List[Int]): Int = {
    // println("Money=" + money + ", coins=" + coins)
    if (money == 0) {
      // println("solution found.");
      return 1
    }
    if (coins.isEmpty) return 0
    var result = 0
    val tail = coins.tail
    for (i <- 0.to(money, coins.head)) {
      result += countChange(money - i, tail)
    }
    return result
  }
}
