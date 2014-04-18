var max = 4000000;

var term_a = 1;
var term_b = 2;
var term_c = 0;

var sum = term_b;

while (term_a + term_b < max) {
  term_c = term_a + term_b;

  if (term_c % 2 === 0) {
    sum += term_c;
  }

  term_a = term_b;
  term_b = term_c;
}

alert("Sum: " + sum);
// Answer: 4613732
