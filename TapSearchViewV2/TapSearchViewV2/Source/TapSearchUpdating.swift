//
//  TapSearchUpdating.swift
//  TapSearchView
//
//  Copyright © 2019 Tap Payments. All rights reserved.
//

import Foundation
import protocol TapAdditionsKitV2.ClassProtocol

/// Protocol to handle user input interaction in `TapSearchView`
public protocol TapSearchUpdating: ClassProtocol {
    
    /// Asks the receiver to update search results with the `searchText`.
    ///
    /// - Parameter searchText: Search text.
    func updateSearchResults(with searchText: String)
}
