//
//  File.swift
//  Shared
//
//  Created by Aleksey Berezka on 19.04.2025.
//

import Foundation
import SwiftNavigation

@CasePathable
public enum Destination: Codable, Identifiable {
    public var id: UUID { UUID() }
    
    case details
    case comments
}
