//
//  AssetsManager.swift
//  LazyAssets
//
//  Created by Balaji K S on 28/02/24.
//

import UIKit

public final class AssetsManager {
    
    public static func fetchImage(name: String) -> UIImage? {
        return UIImage(named: name, in: .localModule, compatibleWith: nil)
    }
}
