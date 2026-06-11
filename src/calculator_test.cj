package calculator

import std.unittest.*
import std.unittest.testmacro.*

@Test
public class CalculatorTest {
    @TestCase
    func testAdd(): Unit {
        @Expect(add(1, 2), 3)
        @Expect(add(-1, 1), 0)
    }

    @TestCase
    func testSub(): Unit {
        @Expect(sub(5, 3), 2)
        @Expect(sub(0, 7), -7)
    }

    @TestCase
    func testMul(): Unit {
        @Expect(mul(4, 5), 20)
        @Expect(mul(0, 100), 0)
    }

    @TestCase
    func testDivide(): Unit {
        @Expect(divide(10, 2), 5)
    }

    @TestCase
    func testDivideByZero(): Unit {
        try {
            divide(1, 0)
            @Fail("expected ArithmeticException, got none")
        } catch (e: ArithmeticException) {
        }
    }
}
