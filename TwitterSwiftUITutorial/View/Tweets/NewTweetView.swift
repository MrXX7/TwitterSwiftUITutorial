//
//  NewTweetView.swift
//  TwitterSwiftUITutorial
//
//  Created by Oncu Ohancan on 13.04.2022.
//

import SwiftUI

struct NewTweetView: View {
    @Binding var isPresented: Bool
    
    var body: some View {
        VStack {
            HStack {
                Image("batman")
                    .resizable()
                    .scaledToFill()
                    .clipped()
                    .frame(width: 64, height: 64)
                    .cornerRadius(32)
                
                Text("What's happening?")
                    .foregroundColor(.gray)
             Spacer()
            }
            .padding()
            .navigationBarItems(leading: Button(action: {
                isPresented.toggle()
            }, label: {
                Text("Cancel")
                    .foregroundColor(.blue)
            }),
                trailing: Button(action: {}, label: {
                Text("Button")
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .clipShape(Capsule())
        }) )
            Spacer()
        }
    }
}
struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView(isPresented: .constant(true))
    }
}
