//
//  ContentView.swift
//  BarGraphDemo
//
//  Created by EthanLin on 2019/8/21.
//  Copyright © 2019 EthanLin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        BarGraph(reports: Report.all())
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
