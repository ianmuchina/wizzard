function square(x) {
  return x * x;
}

function cube(x) {
  return x * x * x;
}

function goodEnough(guess, goal) {
  let difference = cube(guess) - goal
  if ( difference < 0.000001 && difference >= 0) {
    return true;
  } else {
    return false;
  }
}

function improve(guess, goal) {
  return (goal / square(guess) + (guess + guess)) / 3;
}

function cubeRootLoop(guess, goal) {
  if (goodEnough(guess, goal)) {
    return guess;
  } else {
    let newGuess = improve(guess, goal);
    return cubeRootLoop(newGuess, goal);
  }
}


function cubeRoot(x){
  return cubeRootLoop(1.0, x)
}

console.log(cubeRoot(27))