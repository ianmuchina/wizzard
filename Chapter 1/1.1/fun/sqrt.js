
//Program to calculate Square Root
//Find the square root
function sqrt(x) {
    //Start guessing
    sqrtIter(1.0, x)
}

//Improve a guess
function improve(g, x) {
    console.log(`(${g} + ( ${x} / ${g})) / 2`)
    return (g + ( x / g)) / 2
}

function goodEnough(g, x) {
    
    let difference =  x - (g * g);

    if ( difference < 0.000000000000000000001 && difference >= 0) {
        return true
    }
    
    return false
}

function sqrtIter(g, x) {
    console.log("",g)
    //Base Case
    if (goodEnough(g, x)) {
        console.log("Good Enough")
        return g;        
    }

    //New Guess
    let newg = improve(g, x)
    //Repeat
    sqrtIter(newg, x)
}

sqrt(2)