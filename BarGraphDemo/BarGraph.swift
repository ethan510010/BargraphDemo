//
//  BarGraph.swift
//  BarGraphDemo
//
//  Created by EthanLin on 2019/8/21.
//  Copyright © 2019 EthanLin. All rights reserved.
//

import SwiftUI

struct BarGraph: View {
    
    let reports: [Report]
    
    var body: some View {
        VStack {
            HStack(alignment: .lastTextBaseline) {
                ForEach(self.reports.identified(by: \.self)) { (report) in
                    BarView(report: report)
                }
            }
        }
    }
}

struct BarView: View {
    
    let report: Report
    @State private var showGraph: Bool = false
    
    var body: some View {
        
        let value = report.revenue / 500 // 500代表maxHeight
        let yValue = Swift.min(value * 20, 500)

        return VStack {
            
            Text(String(format: "$%.2f", report.revenue))
            
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: self.showGraph ? Length(yValue) : Length(0.0))
                .onAppear {
                    withAnimation(.basic(duration: 2.0)) {
                        self.showGraph.toggle()
                    }
            }
            
            Text(report.year)
        }
    }
}
