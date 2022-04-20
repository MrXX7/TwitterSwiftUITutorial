//
//  SearchView.swift
//  TwitterSwiftUITutorial
//
//  Created by Oncu Ohancan on 10.04.2022.
//

import SwiftUI

struct SearchView: View {
    
    @State var searchText = ""
    @ObservedObject var viewModel = SearchViewModel()
    
    var body: some View {
        ScrollView {
        SearchBar(text: $searchText)
                .padding()
            VStack(alignment: .leading) {
                ForEach(viewModel.users) { user in
                    HStack {
                        Spacer()}
                    NavigationLink(destination: UserProfileView(user: user),
                                   label: {
                        UserCell(user: user)
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
