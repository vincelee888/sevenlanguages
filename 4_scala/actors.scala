import scala.actors._
import scala.actors.Actor._

case object Poke
case object Feed

class Kid(name:String) extends Actor {
	def act() {
		loop {
			react {
				case Poke => {
					println(name + ": Oww...")
					println(name + ": Quit it...")
				}
				case Feed => {
					println(name + ": Gurgle...")
					println(name + ": Burp...")
				}
			}
		}
	}
}

val bart = new Kid("Bart").start
val lisa = new Kid("Lisa").start

bart ! Poke
lisa ! Poke
bart ! Poke