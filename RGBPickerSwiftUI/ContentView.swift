//
//  ContentView.swift
//  RGBPickerSwiftUI
//
//  Created by PenguinRaja on 30.03.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redValue = Double.random(in: 1...255)
    @State private var blueValue = Double.random(in: 1...255)
    @State private var greenValue = Double.random(in: 1...255)
    
    @State private var alertPresented = false
    
    var body: some View {
        
        ZStack {
            Color(.systemTeal)
                .ignoresSafeArea()
            VStack {
                RGBView(red: redValue, green: greenValue, blue: blueValue)
                SliderLogic(red: $redValue, blue: $blueValue, green: $greenValue)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SliderLogic: View {
    
    @Binding var red: Double
    @Binding var blue: Double
    @Binding var green: Double
    
    var body: some View {

        HStack {
            VStack {
                RGBText(red: $red, blue: $blue, green: $green)
                    .padding(.horizontal)
                    .frame(width: 65)
            }
            VStack {
                Sliders(red: $red, blue: $blue, green: $green)
            }
            VStack {
                RGBTextfield(red: $red, blue: $blue, green: $green)
                    .padding(.horizontal)
                    .frame(width: 80)
            }
        }.padding()
    }
}

struct Sliders: View {
    
    @Binding var red: Double
    @Binding var blue: Double
    @Binding var green: Double
    
    var body: some View {
        VStack {
            Slider(value: $red, in: 1...255, step: 1).accentColor(.red)
            Slider(value: $blue, in: 1...255, step: 1).accentColor(.yellow)
            Slider(value: $green, in: 1...255, step: 1).accentColor(.green)
        }
    }
}

struct RGBText: View {
    
    @Binding var red: Double
    @Binding var blue: Double
    @Binding var green: Double
    
    var body: some View {
        VStack (spacing: 20) {
            Text("\(lround(red))")
            Text("\(lround(blue))")
            Text("\(lround(green))")
        }
    }
}

struct RGBTextfield: View {
    
    @Binding var red: Double
    @Binding var blue: Double
    @Binding var green: Double
    
    let formatter: NumberFormatter = {
            let numFormatter = NumberFormatter()
            numFormatter.numberStyle = .none
            return numFormatter
        }()
    
    var body: some View {
        VStack {
            TextField("0", value: $red, formatter: formatter).textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("0", value: $blue, formatter: formatter).textFieldStyle(RoundedBorderTextFieldStyle())
            TextField("0", value: $green, formatter: formatter).textFieldStyle(RoundedBorderTextFieldStyle())
        }
    }
}
