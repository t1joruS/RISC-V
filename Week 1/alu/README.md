# Binary Arithmetic: 10 - 12 in 1's Complement and 2's Complement Form

This document explains the calculation of \(10 - 12\) using both 1's complement and 2's complement representations.

## Binary Representations

Let's assume we are using 4-bit representations for simplicity.

- \(10_{10} = 1010_2\)
- \(12_{10} = 1100_2\)

## 1's Complement Representation

### Step 1: Find the 1's Complement of 12

1. Binary representation of 12: `1100`
2. Invert each bit (1's complement): `0011`

### Step 2: Add 10 and the 1's Complement of 12

1. \(10_{10}\) in binary: `1010`
2. 1's complement of 12: `0011`
3. Add them together:
   ```
   1010
 + 0011
 ------
   1101
   ```

### Step 3: Check for Overflow

No overflow occurs within the 4 bits.

### Step 4: Interpret the Result

The result `1101` is in 1's complement form. In 1's complement, `1101` represents a negative number. To find the magnitude, we take the complement:

1. Complement `1101`: `0010` (which is 2 in decimal)
2. So, `1101` represents `-2` in 1's complement.

## 2's Complement Representation

### Step 1: Find the 2's Complement of 12

1. Binary representation of 12: `1100`
2. Invert each bit: `0011` (1's complement)
3. Add 1 to the 1's complement:
   ```
   0011
 + 0001
 ------
   0100
   ```

So, the 2's complement of 12 is `0100`.

### Step 2: Add 10 and the 2's Complement of 12

1. \(10_{10}\) in binary: `1010`
2. 2's complement of 12: `0100`
3. Add them together:
   ```
   1010
 + 0100
 ------
  1110
   ```

### Step 3: Interpret the Result

The result `1110` is in 2's complement form. In 2's complement, `1110` represents a negative number. To find the magnitude, we take the 2's complement again:

1. Invert each bit of `1110`: `0001`
2. Add 1 to the result:
   ```
   0001
 + 0001
 ------
   0010
   ```

So, `1110` represents `-2` in 2's complement.

## Summary

- **1's Complement:** \(10 - 12 = 1101_2\) (which represents \(-2\))
- **2's Complement:** \(10 - 12 = 1110_2\) (which represents \(-2\))
