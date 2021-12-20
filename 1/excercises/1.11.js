// Recursive

function f(n) {
    if (n < 3) {
        return n
    } else {
        return (
            +      f(n - 1)  //a
            + (2 * f(n - 2)) //b
            + (3 * f(n - 3)) //c
        )
    }
}


function f_iter(a, b, c, counter){
    let d = (
        + (1 * a)
        + (2 * b)
        + (3 * c)
    )

    if (counter === 0) {
        return d
    } else {
        //shift mut values up by 1
        a = b
        b = c
        c = d
        return f_iter(a,b,c, counter - 1)
    }
}

function fR(x) {
    f_iter(2, 1, 0, x)
}



//Tests
for (let n = 1; n <= 20; n++) {
    console.log(f(n))
}