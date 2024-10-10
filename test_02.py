def binary_to_decimal(s: str) -> int:
    test_string = s
    multiplier = 1
    return_val = 0

    while test_string:
        val = int(test_string[-1])
        return_val += val * multiplier
        test_string = test_string[:-1]
        multiplier *= 2

    return return_val


def main() -> None:
    print(binary_to_decimal('1011'))
    print(binary_to_decimal('0000'))
    print(binary_to_decimal('0101'))
    print(binary_to_decimal('10000101'))


if __name__ == '__main__':
    main()
