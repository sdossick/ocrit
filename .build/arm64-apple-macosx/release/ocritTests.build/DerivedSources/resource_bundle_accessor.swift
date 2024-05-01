import class Foundation.Bundle

extension Foundation.Bundle {
    static let module: Bundle = {
        let mainPath = Bundle.main.bundleURL.appendingPathComponent("ocrit_ocritTests.bundle").path
        let buildPath = "/Users/s.mcintyre/Dropbox/Personal/Projects/tacita/ocrtest/ocrit/.build/arm64-apple-macosx/release/ocrit_ocritTests.bundle"

        let preferredBundle = Bundle(path: mainPath)

        guard let bundle = preferredBundle ?? Bundle(path: buildPath) else {
            fatalError("could not load resource bundle: from \(mainPath) or \(buildPath)")
        }

        return bundle
    }()
}