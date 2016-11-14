The decimal zip of two non-negative integers A and B is an integer C whose decimal representation is created from the decimal representations of A and B as follows:

* the first (i.e. the most significant) digit of C is the first digit of A;
* the second digit of C is the first digit of B;
* the third digit of C is the second digit of A;
* the fourth digit of C is the second digit of B;
* etc...

When one of the integers A and B runs out of digits, the remaining digits of the other integer are appended to the result.

The decimal representation of 0 is "0".

Examples:
```
 decimal(12,56) => 1526
 decimal(12345,678) => 16273845
 decimal(123,67890) => 16273890
```
 
Write a function `decimal_zip(A, B)` that:
 * given two non-negative integers A and B, returns their decimal zip
 * returns -1 if the result exceeds 100_000_000

Notes:
* you can assume A and B are both integers within the range [0..100_000_000].
