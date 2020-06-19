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
 
    var body: some View {
        NavigationView {
            TabView(selection: $selection) {
                FirstTabView()
                .tabItem {
                    VStack {
                        Image("first")
                        Text("First")
                    }
                }
                .tag(0)
                
                SecondTabView()
                .tabItem {
                    VStack {
                        Image("second")
                        Text("Second")
                    }
                }
                .tag(1)
            }
            .accessibility(identifier: "tab_bar")
            .navigationBarTitle(Text("\(selection + 1). View"), displayMode: .inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
