//
//  RGBText.swift
//  RGBPickerSwiftUI
//
//  Created by PenguinRaja on 30.03.2021.
//

import SwiftUI

struct RGBText: View {
    
    let red: String
    let yellow: String
    let green: String
    
    var body: some View {
        VStack (spacing: 20) {
            Text(red)
            Text(yellow)
            Text(green)
        }
    }
}

struct RGBText_Previews: PreviewProvider {
    static var previews: some View {
        RGBText(red: "red", yellow: "yellow", green: "green")
    }
}
