var value = 13195; // 600851475143;

var largest_prime = 0;
var start = 2;

var divide = function (result) {
    var number = result[0];
    var start = result[1];
    for (start; start < number; start++) {
        if (number % n === 0) {
            number = number / n;
            start = n;
            break;
        }
    }

    return [number, start];
};

while (value > 1) {
    result = divide(result);
    largest_prime = result[1];
    value = result[0];
}

alert("Largest Prime: " + largest_prime);
