//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/11/29.
//

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
