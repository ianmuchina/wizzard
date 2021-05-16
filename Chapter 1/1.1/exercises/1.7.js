//Program to calculate Square Root
//Find the square root
function sqrt(x) {
  //Start guessing
  sqrtIter(1.0, x);
}

//Improve a guess
function improve(guess, x) {
  return (guess + x / guess) / 2;
}

function goodEnough(guess, x) {
  if (improve(guess, x) - guess === 0) {
    return true;
  }

  return false;
}

function sqrtIter(g, x) {
  console.log(g);
  //Base Case
  if (goodEnough(g, x)) {
    console.log("");
    return g;
  }

  //New Guess
  let newg = improve(g, x);
  //Repeat
  return sqrtIter(newg, x);
}

let r = sqrt(2);

console.log(r);
