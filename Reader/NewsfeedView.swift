//
//  ContentView.swift
//  Writer
//
//  Created by Aleksey Berezka on 19.04.2025.
//

import SwiftUI
import Sharing
import SNShared

struct NewsfeedView: View {
    var navigateTo: (Destination) -> Void
    
    var body: some View {
        VStack {
            Text("Newsfeed")
        }
        Button("Navigate", action: {
            navigateTo(.details)
        })
        .padding()
    }
}

#Preview {
    NewsfeedView(navigateTo: { _ in })
}
