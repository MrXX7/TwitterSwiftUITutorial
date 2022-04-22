//
//  ContentView.swift
//  TwitterSwiftUITutorial
//
//  Created by Oncu Ohancan on 10.04.2022.
//

import SwiftUI
import Kingfisher

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
            }
                .navigationBarTitle("Home")
                .navigationBarItems(leading: Button(action: {
                    viewModel.signOut()
                }, label: {
                    if let user = viewModel.user {
                        KFImage(URL(string: user.profileImageUrl))
                            .resizable()
                            .scaledToFill()
                            .clipped()
                            .frame(width: 32, height: 32)
                            .cornerRadius(16)
                    }
                }))
                .navigationBarTitleDisplayMode(.inline)
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
