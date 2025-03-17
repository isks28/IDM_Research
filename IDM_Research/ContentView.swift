//
//  ContentView.swift
//  IDM_Research
//
//  Created by Irnu Suryohadi Kusumo on 12.03.25.
//

import SwiftUI

struct ContentView: View {
    @State var selectedTab = "Home"
    
    var body: some View {
        ZStack {
            TabView(selection: $selectedTab) {
                
                HomeView()
                    .tag("HomeView")
                    .tabItem{
                        Image(systemName: "house")
                    }
                ProgressView()
                    .tag("ProgressView")
                    .tabItem{
                        Image(systemName: "chart.bar.xaxis")
                    }
                ContactsView()
                    .tag("ContactsView")
                    .tabItem{
                        Image(systemName: "message")
                    }
                }
            }
        }
    }

#Preview {
    ContentView()
}
