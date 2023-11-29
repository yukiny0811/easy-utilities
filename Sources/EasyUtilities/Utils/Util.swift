//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/11/29.
//

public enum Util {
    
    public static func showDrop(_ message: String) {
        let drop = Drop.init(stringLiteral: message)
        Drops.show(drop)
    }
}
