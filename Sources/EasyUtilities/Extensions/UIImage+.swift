// The Swift Programming Language
// https://docs.swift.org/swift-book

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
