//
//  ContentView.swift
//  lab1cz
//
//  Created by student on 15.10.2024.
//

import SwiftUI

struct ContentView: View {
    @State var opacity: Double = 0.5
    @State var color1 = Color.red
    @State var color2 = Color.blue
    @State var colorDatas: [ColorData] = [
        ColorData(colorName: "Red", colorValue: Color.red, count: 1),
            ColorData(colorName: "Blue", colorValue: Color.blue, count: 1),
            ColorData(colorName: "Green", colorValue: Color.green, count: 0),
            ColorData(colorName: "Yellow", colorValue: Color.yellow, count: 0),
            ColorData(colorName: "Orange", colorValue: Color.orange, count: 0),
            ColorData(colorName: "Purple", colorValue: Color.purple, count: 0),
            ColorData(colorName: "Pink", colorValue: Color.pink, count: 0),
            ColorData(colorName: "Gray", colorValue: Color.gray, count: 0)
        ]
    
    @State private var visibleCircleIndex: Int? = nil
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Circle()
                    .fill(color1)
                    .opacity(opacity)
                    .frame(width: 200)
                    .onTapGesture {
                        if opacity == 1 {
                            opacity = 0
                        } else {
                            opacity = 1
                        }
                    }

                Circle()
                    .fill(color2)
                    .opacity(1-opacity)
                    .frame(width: 200)
                    .onTapGesture {
                        if opacity == 1 {
                            opacity = 0
                        } else {
                            opacity = 1
                        }
                    }
            }
            
            Spacer()
            
            HStack {
                Button("Losuj kolor 1") {
                    color1 = randColor()
                }
                Spacer()
                Button("Losuj kolor 2") {
                    color2 = randColor()
                }
            }

            HStack {
                NavigationLink("Pokaz statystyke", destination: StatisticView(colors: colorDatas))
                Spacer()
                NavigationLink("Wykres kołowy", destination: BarChart(colors: colorDatas))
            }
            
        }
        .padding()
    }
    
    func randColor() -> Color {
        let i = Int.random(in: 0..<colorDatas.count)
        colorDatas[i].count += 1
        return colorDatas[i].colorValue
    }
}

#Preview {
    ContentView()
}
