val list = List("Mary", "had", "a", "little", "lamb")

println(list.foldLeft(0)((sum, value) => sum + value.length))