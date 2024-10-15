//
//  ColorData.swift
//  lab1cz
//
//  Created by student on 15.10.2024.
//

import Foundation
import SwiftUI

struct ColorData : Identifiable {
    var colorName: String
    var colorValue: Color
    var count: Int
    var id = UUID()
    
    init(colorName: String, colorValue: Color, count: Int = 0) {
        self.id = UUID()
        self.colorName = colorName
        self.colorValue = colorValue
        self.count = count
    }
}
