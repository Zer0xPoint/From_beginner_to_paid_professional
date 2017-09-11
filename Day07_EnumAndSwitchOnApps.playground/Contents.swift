//: A UIKit based Playground for presenting user interface
  
import UIKit

//Associated Value
enum Barcode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarcode = Barcode.upc(8, 123, 235, 7)
//change to qrcode
productBarcode = Barcode.qrCode("www.google.com")

switch productBarcode {
    case let .upc(numberSystem, manufacturer, produceCode, checkCode):
        print("UPC: \(numberSystem), \(manufacturer), \(produceCode), \(checkCode)")
    case let .qrCode(productCode):
        print("QR Code: \(productCode)")
}

//raw Value
enum JediMaster: String {
    case yoda = "Yoda"
    case maceWindu = "Mace Windu"
    case quiGonjinn = "Qui-Gon Jinn"
    case obiWanKenobi = "Obi-Wan Kenobi"
    case lukeSkywakler = "Luke Skywalker"
}

print(JediMaster.yoda.rawValue)

//SwitchStatus
enum SwitchStatus {
    case on
    case off
}

var switchStatus: SwitchStatus = .off

func flipSwitch(status: SwitchStatus) -> SwitchStatus {
    if status == .off {
        return .on
    } else {
        return .off
    }
}

flipSwitch(status: switchStatus)
flipSwitch(status: switchStatus)
print(switchStatus)
