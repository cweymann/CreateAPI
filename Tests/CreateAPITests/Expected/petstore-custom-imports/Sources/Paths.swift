// Generated by Create API
// https://github.com/kean/CreateAPI
//
// swiftlint:disable all

import Foundation
import APIClient
import CoreData
import HTTPHeaders

public enum Paths {}

extension Paths {
    public static var pets: Pets {
        Pets(path: "/pets")
    }

    public struct Pets {
        /// Path: `/pets`
        public let path: String

        /// List all pets
        public func get(limit: Int? = nil) -> Request<[petstore_custom_imports.Pet]> {
            .get(path, query: makeGetQuery(limit))
        }

        public enum GetResponseHeaders {
            /// A link to the next page of responses
            public static let next = HTTPHeader<String>(field: "x-next")
        }

        private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
            [("limit", limit.map(Query.encode))]
        }

        /// Create a pet
        public var post: Request<Void> {
            .post(path)
        }
    }
}

extension Paths.Pets {
    public func petID(_ petID: String) -> WithPetID {
        WithPetID(path: path + "/" + petID)
    }

    public struct WithPetID {
        /// Path: `/pets/{petId}`
        public let path: String

        /// Info for a specific pet
        public var get: Request<petstore_custom_imports.Pet> {
            .get(path)
        }
    }
}

private struct Query {
    static func encode(_ value: Bool) -> String {
        value ? "true" : "false"
    }

    static func encode(_ value: Date) -> String {
        ISO8601DateFormatter().string(from: value)
    }

    static func encode(_ value: Double) -> String {
        String(value)
    }

    static func encode(_ value: Int) -> String {
        String(value)
    }

    static func encode(_ value: String) -> String {
        value
    }

    static func encode(_ value: URL) -> String {
        value.absoluteString
    }

    static func encode<T: RawRepresentable>(_ value: T) -> String where T.RawValue == String {
        value.rawValue
    }
}
