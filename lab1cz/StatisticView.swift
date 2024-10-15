//
//  StatisticView.swift
//  lab1cz
//
//  Created by student on 15.10.2024.
//

import SwiftUI
import Charts

struct StatisticView: View {
    let colors: [ColorData]
    
    var body: some View {
        Chart {
            ForEach(colors) {
                item in BarMark(
                    x: .value("",
                        item.colorName),
                    y: .value("",
                        item.count)
                    )
                .foregroundStyle(item.colorValue)
            }
        }
        .navigationTitle("Statystyki kolorów")
    }
}

//#Preview {
//    StatisticView(colors: [.init(colorName: "red", colorValue: Color.red, count: 1)])
//}
