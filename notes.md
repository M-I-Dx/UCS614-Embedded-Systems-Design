### Circut logic

#### Logic expressions

a and b: `a&b`
a or b: `a|b`
a xor b: `a^b`
not a: `~a`

#### Half adder
In case of half adder, there are two inputs and two outputs.

`Sum = a^b`
`Carry = a&b`

#### Full adder
In case of full adder, there are three inputs and two outputs.

`Sum = a^b^c`

`Carry = a&b|a&c|b&c`
Alternative `Carry = (a^b)&c|a&b`
Note: Carry will be 1 if any two input values are 1.

#### Half subtractor
In the case of half subtractor, there are two inputs and two outputs.

`Difference = a^b`
`Borrow = ~a&b`


#### Full subtractor
In care of full subtractor, there are

`Difference = a^b^c`
`Borrow = ~a&c|~a&b|b&c`