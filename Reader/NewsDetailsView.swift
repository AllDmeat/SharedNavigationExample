//
//  NewsDetailsView.swift
//  Writer
//
//  Created by Aleksey Berezka on 19.04.2025.
//

import SwiftUI
import SNShared

struct NewsDetailsView: View {
    var navigateTo: (Destination) -> Void
    
    var body: some View {
        VStack {
            Text("Details")
        }
        Button("Navigate", action: {
            navigateTo(.comments)
        })
        .padding()
    }
}

#Preview {
    NewsDetailsView(navigateTo: { _ in })
}
