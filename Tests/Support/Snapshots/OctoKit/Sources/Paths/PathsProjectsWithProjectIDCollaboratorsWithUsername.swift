// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Projects.WithProjectID.Collaborators {
    public func username(_ username: String) -> WithUsername {
        WithUsername(path: "\(path)/\(username)")
    }

    public struct WithUsername {
        /// Path: `/projects/{project_id}/collaborators/{username}`
        public let path: String

        /// Add project collaborator
        ///
        /// Adds a collaborator to an organization project and sets their permission level. You must be an organization owner or a project `admin` to add a collaborator.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/projects#add-project-collaborator)
        public func put(permission: PutRequest.Permission? = nil) -> Request<Void> {
            Request(path: path, method: "PUT", body: PutRequest(permission: permission), id: "projects/add-collaborator")
        }

        public struct PutRequest: Encodable {
            /// The permission to grant the collaborator.
            ///
            /// Example: "write"
            public var permission: Permission?

            /// The permission to grant the collaborator.
            ///
            /// Example: "write"
            public enum Permission: String, Codable, CaseIterable {
                case read
                case write
                case admin
            }

            public init(permission: Permission? = .write) {
                self.permission = permission
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encodeIfPresent(permission, forKey: "permission")
            }
        }

        /// Remove user as a collaborator
        ///
        /// Removes a collaborator from an organization project. You must be an organization owner or a project `admin` to remove a collaborator.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/projects#remove-project-collaborator)
        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "projects/remove-collaborator")
        }
    }
}
