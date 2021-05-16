#include <stdbool.h>
#include <stdio.h>

//Improve a guess
double improve(double guess, double x) {
    return (guess + x / guess) / 2;
}

bool goodEnough(double guess, double x) {
    double newGuess = improve(guess, x);

    if (newGuess - guess == 0) {
        return true;
    }

    return false;
}

double sqrtIter(double g, double x) {
    printf("%f\n", g);
    //Base Case
    if (goodEnough(g, x)) {
        printf("\n");
        return g;
    }

    //New Guess
    double newg = improve(g, x);
    //Repeat
    sqrtIter(newg, x);
}
double my_sqrt(double x) {
    //Start guessing
    double ans;
    ans = sqrtIter(1, x);
    return ans;
}

double main() {
    double x = 2;
    double r = my_sqrt(x);
    printf("%f\n", r);
    return r;
}