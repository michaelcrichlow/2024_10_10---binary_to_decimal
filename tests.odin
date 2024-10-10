package test

import "core:fmt"
import "core:math"
print :: fmt.println

main :: proc() {
	print(binary_to_decimal("1011"))
	print(binary_to_decimal("0000"))
	print(binary_to_decimal("0101"))
	print(binary_to_decimal("10000101"))
	// OUTPUT: 
	// 11
	// 0
	// 5
	// 133
}


binary_to_decimal :: proc(s: string) -> int {
	// Since you know the length of the string, you know the 
	// multiplier to start with since it's 2^(n - 1) where
	// n is the length. If the length is 4, the starting 
	// multiplier is 2^3, which is 8.
	multiplier := int(math.pow(f32(2), f32(len(s) - 1)))
	return_val := 0

	for val in s {
		if val_as_int, ok := int_cast(val); ok {
			return_val += (val_as_int * multiplier)
			multiplier /= 2
		}
	}

	return return_val
}
