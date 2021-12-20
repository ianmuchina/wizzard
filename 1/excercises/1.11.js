// Recursive

function f(n) {
    if (n < 3) {
        return n
    } else {
        return (
            +      f(n - 1)
            + (2 * f(n - 2))
            + (3 * f(n - 3))
        )
    }
}

//Tests
for (let n = 1; n <= 20; n++) {
    console.log(f(n))
}