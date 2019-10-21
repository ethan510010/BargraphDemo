//
//  Report.swift
//  BarGraphDemo
//
//  Created by EthanLin on 2019/8/21.
//  Copyright © 2019 EthanLin. All rights reserved.
//

import Foundation

struct Report: Hashable {
    
    let year: String
    let revenue: Double
}

extension Report {
    static func all() -> [Report] {
        return [
            Report(year: "2001", revenue: 2500),
            Report(year: "2002", revenue: 4500),
            Report(year: "2003", revenue: 6500)
        ]
    }
}
