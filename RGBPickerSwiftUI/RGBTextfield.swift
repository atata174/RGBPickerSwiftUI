//
//  RGBTextfield.swift
//  RGBPickerSwiftUI
//
//  Created by PenguinRaja on 30.03.2021.
//

import SwiftUI

struct RGBTextfield: View {
    
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

struct RGBTextfield_Previews: PreviewProvider {
    static var previews: some View {
        RGBTextfield(red: "red", yellow: "yellow", green: "green")
    }
}
