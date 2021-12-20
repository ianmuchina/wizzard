#!/usr/env node
function f(n) {
    let tmp
    let c = n
    let a = 1
    let b = 0

    while (c !== 0) {
        tmp = b + a
        b = a
        a = tmp
        c = c - 1
    }
    return b
}

console.log(f(5))
