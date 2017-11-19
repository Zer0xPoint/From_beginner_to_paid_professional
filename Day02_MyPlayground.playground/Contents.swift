//: A UIKit based Playground for presenting user interface
  
import UIKit

func calculateTriangleSide (base: Int, height: Int) -> Double {
    let area = sqrt(Double(base * base + height * height))
    return area
}


func printResults() {
    print(calculateTriangleSide(base: 3, height: 4))
}

printResults()