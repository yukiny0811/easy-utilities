// The Swift Programming Language
// https://docs.swift.org/swift-book

@_exported import Foundation
@_exported import UIKit
@_exported import EasyString
@_exported import SFSafeSymbols
@_exported import Defaults

public extension UIImage {
    func toData() -> Data? {
        self.jpegData(compressionQuality: 1.0)
    }
}

public extension Data {
    func jpeg() -> UIImage? {
        UIImage(data: self)
    }
}

public extension CGPoint {
    func distance(from other: CGPoint) -> CGFloat {
        let first = (other.x - self.x) * (other.x - self.x)
        let second = (other.y - self.y) * (other.y - self.y)
        return pow(first + second, 0.5)
    }
}
extension CGPoint: Identifiable {
    public var id: String {
        String(Float(self.x)) + String(Float(self.y))
    }
}

public extension Float {
    var cgFloat: CGFloat {
        CGFloat(self)
    }
}

public extension CGFloat {
    var float: Float {
        Float(self)
    }
}
