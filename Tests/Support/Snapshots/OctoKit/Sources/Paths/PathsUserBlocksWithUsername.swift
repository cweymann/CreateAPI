// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.User.Blocks {
    public func username(_ username: String) -> WithUsername {
        WithUsername(path: "\(path)/\(username)")
    }

    public struct WithUsername {
        /// Path: `/user/blocks/{username}`
        public let path: String

        /// Check if a user is blocked by the authenticated user
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/users#check-if-a-user-is-blocked-by-the-authenticated-user)
        public var get: Request<Void> {
            Request(path: path, method: "GET", id: "users/check-blocked")
        }

        /// Block a user
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/users#block-a-user)
        public var put: Request<Void> {
            Request(path: path, method: "PUT", id: "users/block")
        }

        /// Unblock a user
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/users#unblock-a-user)
        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "users/unblock")
        }
    }
}
