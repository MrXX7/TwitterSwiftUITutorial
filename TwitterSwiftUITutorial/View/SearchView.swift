//
//  SearchView.swift
//  TwitterSwiftUITutorial
//
//  Created by Oncu Ohancan on 10.04.2022.
//

import SwiftUI

struct SearchView: View {
    
    @State var searchText = ""
    var body: some View {
        ScrollView {
        SearchBar(text: $searchText)
                .padding()
            VStack {
                ForEach(0..<19) { _ in
                    Text("add user here..")
                }
            }
}
//        .navigationTitle("Search")
}
}
struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
