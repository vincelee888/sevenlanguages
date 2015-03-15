import scala.collection.immutable.HashMap

trait Censor {
	def cleanse(words:List[String], alts: HashMap[String, String]): List[String] = {
		words.map(word => alts.getOrElse(word, word));
	}
}

class WordSanitiser() extends Censor {
	val alts = HashMap("Shoot" -> "Pucky", "Darn" -> "Beans");

	def sanitise(words:List[String]):List[String] = {
		cleanse(words, alts)
	}
}

val words = List("Shoot", "Darn", "leaves");
val sanitiser = new WordSanitiser();
println(sanitiser.sanitise(words));
