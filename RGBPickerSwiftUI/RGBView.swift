//
//  RGBView.swift
//  RGBPickerSwiftUI
//
//  Created by PenguinRaja on 30.03.2021.
//

import SwiftUI

struct RGBView: View {
    
    let width: CGFloat = UIScreen.main.bounds.width - 20
    let height: CGFloat 
    let color: Color
    
    var body: some View {
        Rectangle()
            .frame(width: width, height: height)
            .foregroundColor(color)
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .stroke(Color.white,
                                style: StrokeStyle(lineWidth: 5))
                    )
    }
}

struct RGBView_Previews: PreviewProvider {
    static var previews: some View {
        RGBView(height: 100, color: .green)
    }
}
