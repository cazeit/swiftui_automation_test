//
//  ContentView.swift
//  swiftui_automation_test
//
//  Created by Carl Zeitler on 18.06.20.
//  Copyright © 2020 Carl Zeitler. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    @State private var isToggleOn = true
    @State private var textFieldText = ""
    @State private var sliderValue = 0.0
    @State private var buttonPressCounter: Int = 0
    
    private var listData = [1,2,3,4]
 
    var body: some View {
        NavigationView{
            TabView(selection: $selection){
                // 1st Tab
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
                .tabItem {
                    VStack {
                        Image("first")
                        Text("First")
                    }
                }
                .tag(0)
                .accessibility(identifier: "first_tab")
                
                // 2nd Tab
                List(listData, id: \.self) { currentRow in
                    NavigationLink(destination: ListSelectedView(rowSelected: currentRow),label: {
                        Text("List Row \(currentRow)")
                            .padding()
                            .accessibility(identifier: "list_cell_text")
                    })
                }
                .onAppear {
                    UITableView.appearance().tableFooterView = UIView()
                }
                .accessibility(identifier: "list")
                .tabItem {
                    VStack {
                        Image("second")
                        Text("Second")
                    }
                }
                .tag(1)
                .accessibility(identifier: "second_tab")
            }
            .navigationBarTitle(Text("\(selection + 1). View"), displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
