import XCTest
import class Foundation.Bundle
@testable import CreateAPI

final class GenerateTests: XCTestCase {
    func testExample() throws {
        // Mac Catalyst won't have `Process`, but it is supported for executables.
        #if !targetEnvironment(macCatalyst)

        let fooBinary = productsDirectory.appendingPathComponent("create-api")

        let process = Process()
        process.executableURL = fooBinary

        let pipe = Pipe()
        process.standardOutput = pipe

        try process.run()
        process.waitUntilExit()

        let data = pipe.fileHandleForReading.readDataToEndOfFile()
        let output = String(data: data, encoding: .utf8)

        XCTAssertEqual(output, "Hello, world!\n")
        #endif
    }

    /// Returns path to the built products directory.
    var productsDirectory: URL {
      #if os(macOS)
        for bundle in Bundle.allBundles where bundle.bundlePath.hasSuffix(".xctest") {
            return bundle.bundleURL.deletingLastPathComponent()
        }
        fatalError("couldn't find the products directory")
      #else
        return Bundle.main.bundleURL
      #endif
    }
    
    func testTypeName() {
        XCTAssertEqual(TypeName("app").rawValue, "App")
        XCTAssertEqual(TypeName("app-manifests").rawValue, "AppManifests")
        XCTAssertEqual(TypeName("appManifests").rawValue, "AppManifests")
    }
    
    func testPropertyName() {
        XCTAssertEqual(PropertyName("app").rawValue, "app")
        XCTAssertEqual(PropertyName("app-manifests").rawValue, "appManifests")
        XCTAssertEqual(PropertyName("{code}").rawValue, "code")
        XCTAssertEqual(PropertyName("appManifests").rawValue, "appManifests")
        XCTAssertEqual(PropertyName("avatar_url").rawValue, "avatarURL")
        XCTAssertEqual(PropertyName("node_id").rawValue, "nodeID")
    }
}