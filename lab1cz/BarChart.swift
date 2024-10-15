//
//  BarChart.swift
//  lab1cz
//
//  Created by student on 15.10.2024.
//

import SwiftUI
import Charts

struct BarChart: View {
    let colors: [ColorData]
    
    var body: some View {
        Chart {
            ForEach(colors) { 
                color in
                SectorMark(angle: .value("Color", color.count),
                           innerRadius: .ratio(0.5),
                           angularInset: 1.5)
                    .cornerRadius(5)
                    .foregroundStyle(color.colorValue)
                    .foregroundStyle(
                         by: .value("Type", color.colorName)
                     )
            }
        }
        .frame(height: 200)
        .padding()
        .navigationTitle("Statystyki kolorów")
    }
}
