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
            VStack(alignment: .leading) {
                ForEach(0..<19) { _ in
                    HStack {
                        Spacer()}
                    NavigationLink(destination: UserProfileView(),
                                   label: {
                        UserCell()
                    })
                }
            }.padding(.leading)
}
}
}
struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
