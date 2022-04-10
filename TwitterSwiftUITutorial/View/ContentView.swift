//
//  ContentView.swift
//  TwitterSwiftUITutorial
//
//  Created by Oncu Ohancan on 10.04.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            TabView {
                FeedView()
                    .tabItem {
                        Text("Home")
                        Image(systemName: "house")
                    }
                SearchView()
                    .tabItem {
                        Text("Search")
                        Image(systemName: "magnifyingglass")
                    }
                Text("Message")
                            .tabItem {
                                Text("Messages")
                                Image(systemName: "envelope")
            }
                            .navigationBarTitle("Home")
                            .navigationBarTitleDisplayMode(.inline)
    }
}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
