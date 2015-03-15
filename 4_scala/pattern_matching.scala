def doChore(chore: String): String = chore match {
	case "clean dishes" => "scrub, dry"
	case "cook dinner" => "chop, sizzle"
	case _ => "whine, complain"
}

println(doChore("wang"))

def factorial(n: Int): Int = n match {
	case 0 => 1
	case x if x > 0 => factorial(n - 1) * n
	case _ => throw new IllegalArgumentException()
}


println(factorial(5))
//println(factorial(-1))