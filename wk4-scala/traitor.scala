import scala.collection.JavaConverters._
import java.util.Properties

trait Censor {
  val curseWordsText= scala.io.Source.fromFile("cursewords.properties").bufferedReader();
  val p = new Properties
  p.load( curseWordsText )
  val curseWords= p.asScala
  def censor(s: String):String= {
    return curseWords.foldLeft( s )( (currentString, mapEntry) => {
      currentString.replaceAll( mapEntry._1, mapEntry._2)
    })
  }
}


class Words()


class CensoredWords() extends Words() with Censor

val censored= new CensoredWords()
assert( censored.censor("Shoot and Darn it!") == "Pucky and Beans it!" )
