def prime(num):
	for i in range(2, int((num/2)+1)):
		if num%i == 0:
			print("Number is not prime")
			return
	print("Number is prime")
	return
prime(int(input("Enter Number: ")))