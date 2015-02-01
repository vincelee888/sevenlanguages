fib := method(nth,
	sequence := list(1, 1)

	if(((nth == 1) or (nth == 2)),
		return sequence at(nth - 1)
	)

	firstOperandIndex := 0
	secondOperandIndex := 1

	for(i, 3, nth, 
		sequence append(sequence at(firstOperandIndex) + sequence at(secondOperandIndex))
		firstOperandIndex = firstOperandIndex + 1
		secondOperandIndex = secondOperandIndex + 1
	)

	return sequence at((sequence size) - 1)
)

if(fib(1) == 1) then("1 pass" println) else ("fail: " .. fib(1) println)
if(fib(2) == 1) then("2 pass" println) else ("fail: " .. fib(2) println)
if(fib(3) == 2) then("3 pass" println) else ("fail: " .. fib(3) println)
if(fib(4) == 3) then("4 pass" println) else ("fail: " .. fib(4) println)
if(fib(5) == 5) then("5 pass" println) else ("fail: " .. fib(5) println)
if(fib(8) == 21) then("8 pass" println) else ("fail: " .. fib(8) println)

Number setSlot("standardDivision", Number getSlot("/"))
Number setSlot("/",
	method(denominator,
		if((denominator == 0),
			return 0
		)

		return self standardDivision(denominator)
	)
)

(10 / 5 == 2) println
(10 / 0 == 0) println

addTwoDimArray := method(array,
	flattened := array flatten
	sum := 0

	for(i, 0, (flattened size) - 1,
		sum = sum + flattened at(i)
	)

	return sum
)

twoDimArray := list(
	list(1,2,3,4,5),
	list(1,2,3,4,5),
	list(1,2,3,4,5),
	list(1,2,3,4,5)
)

((addTwoDimArray(twoDimArray)) == 60) println

List setSlot("myAverage",
	method(
		sum := 0
		for(i, 0, self size - 1,
			if((self at(i) proto != Number),
				Exception raise("element not a Number")
			)
			sum = sum + self at(i)
		)

		return sum / self size
	)
)

myList := list(1,2,3,4,5)
((myList myAverage) == 3) println

Matrix := Object clone
Matrix body := list(list())
Matrix dim := method(x, y,
	body = list()
	for(i, 0, x - 1,
		body append(list())
		for(j, 0, y - 1,
			body at(i) append(list())
		)
	)
)
Matrix set := method(x, y, value,
	targetList := body at(x)
	targetList atPut(y, value)
	body atPut(x, targetList)
)
Matrix get := method(x, y,
	return body at(x) at(y)
)

myMatrix := Matrix clone
myMatrix dim(3,3)
myMatrix set(2,2,"hello")
myMatrix get(2,2) println