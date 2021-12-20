// Recursive
package main

import "fmt"

func f(n int) int {
	if n < 3 {
		return n
	}

	return f(n-1) + (2 * f(n-2)) + (3 * f(n-3))

}

func f_iter(a, b, c, counter int) int {
	var n int = (1 * a) + (2 * b) + (3 * c)
	if counter == 3 {
		return n
	}
	return f_iter(n, a, b, counter-1)
}

func fR(x int) int {
	return f_iter(2, 1, 0, x)
}

func fF(x int) int {
	a, b, c := 2, 1, 0

	if x < 3 {
		return x
	}

	for i := x; i > 2; i -= 1 {
		n := ((1 * a) + (2 * b) + (3 * c))
		a, b, c = n, a, b
	}
	return a
}

func main() {

	for i := 0; i < 10; i++ {
		fmt.Println(i, fF(i))
	}

}
