//
//  File.swift
//  
//
//  Created by Yuki Kuwashima on 2023/11/29.
//

import SwiftDate

public enum Util {
    
    public static func showDrop(_ message: String) {
        let drop = Drop.init(stringLiteral: message)
        Drops.show(drop)
    }
    
    public static func dateDifferenceDay(pastDate: Date, futureDate: Date) -> Int {
        let diff = futureDate.timeIntervalSinceReferenceDate - pastDate.timeIntervalSinceReferenceDate
        return Date.init(timeIntervalSinceReferenceDate: diff).day
    }
}
