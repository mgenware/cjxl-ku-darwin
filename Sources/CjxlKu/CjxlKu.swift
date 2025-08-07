import Foundation
import libcjxlx

public class CjxlKu {
  public static func run(arguments: [String]) -> Int {
    // Add ffprobe to the arguments
    let arguments = ["cjxl"] + arguments

    // Convert arguments to UnsafeMutablePointer<CChar> 2
    var cArguments = arguments.map { strdup($0) }

    let argc = Int32(arguments.count)

    let ret = cjxl_main(argc, &cArguments)

    for arg in cArguments {
      free(arg)
    }
    return Int(ret)
  }
}
