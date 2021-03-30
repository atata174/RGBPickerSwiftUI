//
//  RGBView.swift
//  RGBPickerSwiftUI
//
//  Created by PenguinRaja on 30.03.2021.
//

import SwiftUI

struct RGBView: View {
    
    let width: CGFloat = UIScreen.main.bounds.width - 20
    let height: CGFloat = 100
    var red: Double
    var green: Double
    var blue: Double
    
    var body: some View {
        Rectangle()
            .frame(width: width, height: height)
            .foregroundColor(
                Color(
                    CGColor(
                        red: CGFloat(red/255),
                        green: CGFloat(green/255),
                        blue: CGFloat(blue/255),
                        alpha: 1)
                )
            )
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .stroke(Color.white,
                                style: StrokeStyle(lineWidth: 5))
                    )
    }
}

struct RGBView_Previews: PreviewProvider {
    static var previews: some View {
        RGBView(red: 50, green: 50, blue: 150)
    }
}
