//
//  Bundle+Additions.swift
//  TapSearchView
//
//  Copyright © 2019 Tap Payments. All rights reserved.
//

import Foundation
import TapAdditionsKitV2

internal extension Bundle {
    
    // MARK: - Internal -
    // MARK: Properties
    
    /// Tap Search View Resources bundle.
    static let tapSearchViewResources: Bundle = {
        
        #if SWIFT_PACKAGE
        // Swift Package Manager puts the xib and images in the package's own resource bundle.
        return Bundle.module
        #else
        guard let result = Bundle(for: TapSearchView.self).tap_childBundle(named: Constants.tapSearchViewResourcesBundleName) else {
            
            fatalError("There is no \(Constants.tapSearchViewResourcesBundleName) bundle.")
        }
        
        return result
        #endif
    }()
    
    // MARK: - Private -
    
    private struct Constants {
        
        fileprivate static let tapSearchViewResourcesBundleName = "TapSearchViewResources"
        
        @available(*, unavailable) private init() {}
    }
}
