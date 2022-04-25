//
//  LazyView.swift
//  TwitterSwiftUITutorial
//
//  Created by Oncu Ohancan on 25.04.2022.
//

import SwiftUI

struct LazyView<Content: View>: View {
    let build: () -> Content
    init(_ build: @autoclosure @escaping() -> Content) {
        self.build = build
    }
    
    var body: Content {
        build()
    }
}
