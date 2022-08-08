// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Groups of organization members that gives permissions on specified repositories.
public struct Team: Codable {
    public var id: Int
    public var nodeID: String
    public var name: String
    public var slug: String
    public var description: String?
    public var privacy: String?
    public var permission: String
    public var permissions: Permissions?
    public var url: URL
    /// Example: "https://github.com/orgs/rails/teams/core"
    public var htmlURL: URL
    public var membersURL: String
    public var repositoriesURL: URL
    /// Team Simple
    ///
    /// Groups of organization members that gives permissions on specified repositories.
    public var parent: TeamSimple?

    public struct Permissions: Codable {
        public var isPull: Bool
        public var isTriage: Bool
        public var isPush: Bool
        public var isMaintain: Bool
        public var isAdmin: Bool

        public init(isPull: Bool, isTriage: Bool, isPush: Bool, isMaintain: Bool, isAdmin: Bool) {
            self.isPull = isPull
            self.isTriage = isTriage
            self.isPush = isPush
            self.isMaintain = isMaintain
            self.isAdmin = isAdmin
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.isPull = try values.decode(Bool.self, forKey: "pull")
            self.isTriage = try values.decode(Bool.self, forKey: "triage")
            self.isPush = try values.decode(Bool.self, forKey: "push")
            self.isMaintain = try values.decode(Bool.self, forKey: "maintain")
            self.isAdmin = try values.decode(Bool.self, forKey: "admin")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encode(isPull, forKey: "pull")
            try values.encode(isTriage, forKey: "triage")
            try values.encode(isPush, forKey: "push")
            try values.encode(isMaintain, forKey: "maintain")
            try values.encode(isAdmin, forKey: "admin")
        }
    }

    public init(id: Int, nodeID: String, name: String, slug: String, description: String? = nil, privacy: String? = nil, permission: String, permissions: Permissions? = nil, url: URL, htmlURL: URL, membersURL: String, repositoriesURL: URL, parent: TeamSimple? = nil) {
        self.id = id
        self.nodeID = nodeID
        self.name = name
        self.slug = slug
        self.description = description
        self.privacy = privacy
        self.permission = permission
        self.permissions = permissions
        self.url = url
        self.htmlURL = htmlURL
        self.membersURL = membersURL
        self.repositoriesURL = repositoriesURL
        self.parent = parent
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(Int.self, forKey: "id")
        self.nodeID = try values.decode(String.self, forKey: "node_id")
        self.name = try values.decode(String.self, forKey: "name")
        self.slug = try values.decode(String.self, forKey: "slug")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
        self.privacy = try values.decodeIfPresent(String.self, forKey: "privacy")
        self.permission = try values.decode(String.self, forKey: "permission")
        self.permissions = try values.decodeIfPresent(Permissions.self, forKey: "permissions")
        self.url = try values.decode(URL.self, forKey: "url")
        self.htmlURL = try values.decode(URL.self, forKey: "html_url")
        self.membersURL = try values.decode(String.self, forKey: "members_url")
        self.repositoriesURL = try values.decode(URL.self, forKey: "repositories_url")
        self.parent = try values.decodeIfPresent(TeamSimple.self, forKey: "parent")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encode(nodeID, forKey: "node_id")
        try values.encode(name, forKey: "name")
        try values.encode(slug, forKey: "slug")
        try values.encodeIfPresent(description, forKey: "description")
        try values.encodeIfPresent(privacy, forKey: "privacy")
        try values.encode(permission, forKey: "permission")
        try values.encodeIfPresent(permissions, forKey: "permissions")
        try values.encode(url, forKey: "url")
        try values.encode(htmlURL, forKey: "html_url")
        try values.encode(membersURL, forKey: "members_url")
        try values.encode(repositoriesURL, forKey: "repositories_url")
        try values.encodeIfPresent(parent, forKey: "parent")
    }
}