scalaVersion := "3.2.2"

enablePlugins(ScalaNativePlugin)

// set to Debug for compilation details (Info is default)
logLevel := Level.Info

// import to add Scala Native options
import scala.scalanative.build._

// defaults set with common options shown
nativeConfig ~= { c =>
  c.withLTO(LTO.full) // thin
    .withMode(Mode.releaseSize) // releaseFast
    .withGC(GC.immix) // commix
}
