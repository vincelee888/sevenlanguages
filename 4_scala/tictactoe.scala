val RowA = Array(0,1,2);
val RowB = Array(3,4,5);
val RowC = Array(6,7,8);
val ColA = Array(0,3,6);
val ColB = Array(1,4,7);
val ColC = Array(2,5,8);
val DiaA = Array(0,4,8);
val DiaB = Array(2,4,6);
val WinningLines = Array(RowA, RowB, RowC, ColA, ColB, ColC, DiaA, DiaB);

def GetWinner(Board:String) : String = {

	for(i <- 0 until WinningLines.length) {
		if(
			Board.charAt(WinningLines(i)(0)) == Board.charAt(WinningLines(i)(1)) &&
			Board.charAt(WinningLines(i)(1)) == Board.charAt(WinningLines(i)(2)) &&
			Board.charAt(WinningLines(i)(0)) != '_'
 		) {
			return("Winner: " + Board.charAt(WinningLines(i)(0)))
 		}
	}
	return "Draw"
}
val start = System.currentTimeMillis
println(GetWinner(args(0)))
val finish = System.currentTimeMillis
println (finish - start)