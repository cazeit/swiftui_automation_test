//
//  FirstTabView.swift
//  swiftui_automation_test
//
//  Created by Carl Zeitler on 19.06.20.
//  Copyright © 2020 Carl Zeitler. All rights reserved.
//

import SwiftUI

struct FirstTabView: View {
    
    @State private var isToggleOn = true
    @State private var textFieldText = ""
    @State private var sliderValue = 0.0
    @State private var buttonPressCounter: Int = 0
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter Text...", text: $textFieldText)
                    .padding()
                    .frame(width: 200, height: 50)
                    .overlay(RoundedRectangle(cornerRadius: 4)
                    .stroke(Color.black))
                    .padding()
                    .accessibility(identifier: "text_field")
                Spacer()
                Text("Text: \(textFieldText)")
                    .padding()
                    .accessibility(identifier: "text_field_label")
            }
            .padding(.vertical)
            
            Divider()
            
            HStack {
                Toggle("", isOn: $isToggleOn)
                    .padding()
                    .labelsHidden()
                    .accessibility(identifier: "toggle")
                Spacer()
                Text("Enabled: \(isToggleOn.description)")
                    .padding()
                    .accessibility(identifier: "toggle_label")
            }
            .padding(.vertical)
            
            Divider()
            
            HStack {
                Slider(value: $sliderValue)
                    .padding()
                    .accessibility(identifier: "slider")
                Spacer()
                Text("Value: \(String(format: "%.1f", (sliderValue * 10000).rounded()/100))%")
                    .padding()
                    .accessibility(identifier: "slider_label")
            }
            .padding(.vertical)
            
            Divider()
            
            HStack {
                Button(action: {
                    self.buttonPressCounter += 1
                }, label: {
                    Text("Click me")
                    })
                    .padding()
                    .accessibility(identifier: "button")
                Spacer()
                Text("Button pressed: \(buttonPressCounter)x")
                    .padding()
                    .accessibility(identifier: "button_label")
            }
            .padding(.vertical)
            
            Spacer()
        }
    }
}

struct FirstTabView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabView()
    }
}
