//
//  RootView.swift
//  Reader
//
//  Created by Aleksey Berezka on 19.04.2025.
//

import SwiftUI
import Sharing
import SNShared

struct RootView: View {
    @ObservationIgnored
    @Shared(.fileStorage(.sharedStorageURL))
    var viewModel = ViewModel()
    
    var body: some View {
        List(viewModel.path) { item in
            Text(String(describing: item))
        }
        HStack {
            Spacer()
            Button("Add path") {
                    $viewModel.withLock {
                        if $0.path.last == .details {
                            $0.path.append(.comments)
                        } else {
                            $0.path.append(.details)
                        }
                    }
            }
            Spacer()
            Button("Reset") {
                $viewModel.withLock { $0.path.removeAll() }
            }
            Spacer()
        }
    }
}

#Preview {
    RootView()
}
