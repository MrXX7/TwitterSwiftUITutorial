//
//  TextArea.swift
//  TwitterSwiftUITutorial
//
//  Created by Oncu Ohancan on 13.04.2022.
//

import SwiftUI

struct TextArea: View {
    @Binding var text: String
    let placeholder: String
    
    
    init (_ placeholder: String, text: Binding<String>) {
        self._text = text
        self.placeholder = placeholder
        UITextView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            
            if text.isEmpty {
            Text(placeholder)
                    .foregroundColor(Color(.placeholderText))
                    .padding(.horizontal, 8)
                    .padding(.vertical, 12)
            }
            TextEditor(text: $text)
                .padding(4)
        }.font(.body)
    }
}
//
//struct TextArea_Previews: PreviewProvider {
//    static var previews: some View {
//        TextArea(text: .constant(""), placeholder: "Capiton here...")
//    }
//}
