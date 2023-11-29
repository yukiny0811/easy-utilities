//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/11/29.
//

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
