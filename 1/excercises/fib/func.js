#!/usr/env node
function f(n) {
    return i(1, 0, n)
}
function i(a, b, ix) {
    if (ix === 0) {
        return b
    }
    return i(
        (a + b),
        (a),
        (ix - 1)
    )
}

console.log(f(5))