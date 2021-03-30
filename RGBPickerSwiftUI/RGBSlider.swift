//
//  RGBSlider.swift
//  RGBPickerSwiftUI
//
//  Created by PenguinRaja on 30.03.2021.
//

import SwiftUI

struct RGBSlider: View {
    var red: Double
    var yellow: Double
    var green: Double
    
    var body: some View {
        VStack {
//            Slider(value: red).accentColor(.red)
//            Slider(value: yellow).accentColor(.yellow)
//            Slider(value: green).accentColor(.green)
        }
    }
}

struct RGBSlider_Previews: PreviewProvider {
    static var previews: some View {
        RGBSlider(red: 0.3, yellow: 0.3, green: 0.3)
    }
}
