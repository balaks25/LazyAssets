//
//  BundleExtension.swift
//  LazyAssets
//
//  Created by Balaji K S on 28/02/24.
//

import class Foundation.Bundle

private class BundleFinder {}

extension Foundation.Bundle {
    /// Returns the resource bundle associated with the current Swift module.
    static var localModule: Bundle = {
        let bundleName = "CommonAssets_CommonAssets"

        let candidates = [
            Bundle.main.resourceURL,
            Bundle(for: BundleFinder.self).resourceURL,
            Bundle.main.bundleURL,
        ]

        for candidate in candidates {
            let bundlePath = candidate?.appendingPathComponent(bundleName + ".bundle")
            if let bundle = bundlePath.flatMap(Bundle.init(url:)) {
                return bundle
            }
        }
        assertionFailure("Unable to find bundle named \(bundleName) in the package")
        return Bundle.main
    }()
}
