package streams

import org.junit.runner.RunWith
import org.scalatest.junit.JUnitRunner
import org.scalatest.FunSuite

@RunWith(classOf[JUnitRunner])
class StringParserTerrainSuite extends FunSuite {

  class TestTerrain extends StringParserTerrain {
    override val level =
      """-----o
        |--ST--
        |--oo--
        |--oo--
        |o----o""".stripMargin
  }
  test("simple terrain") {
    new TestTerrain() {
      assert(terrain(Pos(0, 0)).equals(false), "position (0,0) is not valid")
      assert(terrain(Pos(5, 0)).equals(false), "position (5,0) is out of bound")
      assert(terrain(Pos(0, 6)).equals(false), "position (0,6) is out of bound")

      assert(terrain(Pos(1, 3)).equals(true), "position (1,3) is valid")
      assert(terrain(Pos(4, 0)).equals(true), "position (4,0) is valid")
      assert(terrain(Pos(0, 5)).equals(true), "position (0,5) is valid")
    }
  }


}
