//
//  File.swift
//  SNShared
//
//  Created by Aleksey Berezka on 20.04.2025.
//

import SwiftUI

@Observable
public class ViewModel: Codable {
    public var path: [Destination] = []
    
    public init(path: [Destination] = []) {
        self.path = path
    }
}
