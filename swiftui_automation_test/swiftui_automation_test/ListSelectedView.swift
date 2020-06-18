//
//  SwiftUIView.swift
//  swiftui_automation_test
//
//  Created by Carl Zeitler on 18.06.20.
//  Copyright © 2020 Carl Zeitler. All rights reserved.
//

import SwiftUI

struct ListSelectedView: View {
    @State var rowSelected: Int
    
    var body: some View {
        Text("You selected Row \(rowSelected)")
            .accessibility(identifier: "list_selected_label")
            .navigationBarTitle("Selected Row View")
    }
}

struct ListSelectedView_Previews: PreviewProvider {
    static var previews: some View {
        ListSelectedView(rowSelected: 1)
    }
}
