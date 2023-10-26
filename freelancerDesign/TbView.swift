//
//  TbView.swift
//  freelancerDesign
//
//  Created by Emir Güner on 24.10.2023.
//

import SwiftUI

struct TbView: View {
    var body: some View {
        TabView {
            ToDoView()
                .tabItem {
                    Image(systemName: "plus")
                    Text("TO-DO")
            }
            InProgressView()
                .tabItem {
                    Image(systemName: "circle")
                    Text("In Progress")
            }
            DoneView()
                .tabItem {
                    Image(systemName: "checkmark")
                    Text("Done")
            }
        }
    }
}

#Preview {
    TbView()
}
