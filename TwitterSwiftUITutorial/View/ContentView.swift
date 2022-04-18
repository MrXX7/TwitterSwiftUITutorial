//
//  ContentView.swift
//  TwitterSwiftUITutorial
//
//  Created by Oncu Ohancan on 10.04.2022.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var viewModel: AuthViewModel
    var body: some View {
        Group {
            if viewModel.userSession != nil {
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
                        ConversationsView()
                                    .tabItem {
                                        Text("Messages")
                                        Image(systemName: "envelope")
                    }
                                    .navigationBarTitle("Home")
                                    .navigationBarTitleDisplayMode(.inline)
            }
        }
            } else {
                LoginView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
