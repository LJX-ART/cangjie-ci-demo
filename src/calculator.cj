package calculator

public func add(a: Int64, b: Int64): Int64 {
    return a + b
}

public func sub(a: Int64, b: Int64): Int64 {
    return a - b
}

public func mul(a: Int64, b: Int64): Int64 {
    return a * b
}

public func divide(a: Int64, b: Int64): Int64 {
    if (b == 0) {
        throw ArithmeticException("divide by zero")
    }
    return a / b
}

main(): Int64 {
    println("1 + 2 = ${add(1, 2)}")
    println("9 / 3 = ${divide(9, 3)}")
    return 0
}
