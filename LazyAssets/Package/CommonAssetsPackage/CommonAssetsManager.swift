//
//  CommonAssetsManager.swift
//  LazyAssets
//
//  Created by Balaji K S on 28/02/24.
//

import UIKit

public enum CommonAssetsManager: String {
    case about = "About"
    
    public var image: UIImage? {
        return UIImage(named: self.rawValue, in: .localModule, compatibleWith: nil)
    }
}
