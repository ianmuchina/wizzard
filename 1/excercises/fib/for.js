#!/usr/env node

function f(x) {
    let tmp
    let a = 1
    let b = 0

    for (let c = x; c !== 0; c = c - 1) {
        tmp = b + a
        b = a
        a = tmp
    }

    return b
}

console.log(f(5))