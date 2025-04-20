// The Swift Programming Language
// https://docs.swift.org/swift-book
import Foundation

public extension URL {
    static let sharedStorageURL = storeURL(for: "group.sharednavigation", databaseName: "NavStack")
    
    static func storeURL(for appGroup: String, databaseName: String)
        -> URL
    {
        let fileContainer = FileManager.default.containerURL(
            forSecurityApplicationGroupIdentifier: appGroup
        )!

        let url = fileContainer.appendingPathComponent("\(databaseName).json")
        print("Storage url: \(url)")
        return url
    }
}
