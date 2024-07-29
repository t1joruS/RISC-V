# Computing (10-12) in 1's and 2's complement form:

10 in binary is 1010
12 in binary is 1100

1's complement representation of 12 is 0011

Computing (10) + (-12):

			1010
		      +	0011 
		      --------
			1101
Here, carry is 0.
1101 is the 1's complement representation of (-2).
Inverting each bit of 1101 we get, 0010, which is equivalent to 2. The MSB of the addition result signifies it is a negative number.(i.e -2)

2's complement representation of 12 is 0100

Computing (10) + (-12):

			1010
		      +	0100
		      --------
			1110 
here, the carry is 0. (anyways, we neglect it)
1110 is the 2's complement representation of (-2).
Reversing 1110 (in 2's complement method),we get,0010, which is equivalent to 2. The MSB of the addition result signifies it is a negative number.(i.e -2)


  	