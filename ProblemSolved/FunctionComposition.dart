/*
Problem 4: Function Composition
Write a higher-order function compose that takes two functions f and g, and returns a new function that applies f(g(x)).
*/

void main() {
final composed = compose(add2, multiply3);
print(composed(4)); // Output: 14 → because add2(multiply3(4)) = add2(12) = 14
}

int add2(int x) => x + 2;
int multiply3(int x) => x * 3;

Function compose(Function f, Function g) {
return (x) => f(g(x));
}