//
//  SecondTabView.swift
//  swiftui_automation_test
//
//  Created by Carl Zeitler on 19.06.20.
//  Copyright © 2020 Carl Zeitler. All rights reserved.
//

import SwiftUI

struct SecondTabView: View {
    
    private var listData = [1,2,3,4]
    
    var body: some View {
        List(listData, id: \.self) { currentRow in
            NavigationLink(destination: ListSelectedView(rowSelected: currentRow),label: {
                Text("List Row \(currentRow)")
                    .padding()
            })
            .accessibility(identifier: "list_cell_link")
        }
        .accessibility(identifier: "list")
        .onAppear {
            UITableView.appearance().tableFooterView = UIView()
        }
    }
}

struct SecondTabView_Previews: PreviewProvider {
    static var previews: some View {
        SecondTabView()
    }
}
