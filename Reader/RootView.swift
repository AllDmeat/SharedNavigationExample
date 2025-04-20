//
//  RootView.swift
//  Writer
//
//  Created by Aleksey Berezka on 19.04.2025.
//

import SwiftUI
import SNShared
import SwiftUINavigation
import Sharing

struct RootView: View {
    @ObservationIgnored
    @Shared(.fileStorage(.sharedStorageURL))
    var viewModel = ViewModel()
    
    var body: some View {
        NavigationStack(path: Binding($viewModel.path)) {
            NewsfeedView(navigateTo: navigateTo)
                .navigationDestination(
                    for: Destination.self,
                    destination: destinationView
                )
        }
    }
    
    func navigateTo(_ destination: Destination) {
        $viewModel.withLock { $0.path.append(destination) }
    }
    
    private func destinationView(_ destination: Destination) -> some View {
        Group {
            switch destination {
            case .details:
                NewsDetailsView(navigateTo: navigateTo)
            case .comments:
                CommentsView()
            }
        }
    }
}
