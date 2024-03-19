// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Enterprises.WithEnterprise.Actions {
    public var runnerGroups: RunnerGroups {
        RunnerGroups(path: path + "/runner-groups")
    }

    public struct RunnerGroups {
        /// Path: `/enterprises/{enterprise}/actions/runner-groups`
        public let path: String

        /// List self-hosted runner groups for an enterprise
        ///
        /// Lists all self-hosted runner groups for an enterprise.
        /// 
        /// You must authenticate using an access token with the `manage_runners:enterprise` scope to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/enterprise-admin#list-self-hosted-runner-groups-for-an-enterprise)
        public func get(perPage: Int? = nil, page: Int? = nil) -> Request<GetResponse> {
            Request(path: path, method: "GET", query: makeGetQuery(perPage, page), id: "enterprise-admin/list-self-hosted-runner-groups-for-enterprise")
        }

        public struct GetResponse: Decodable {
            public var totalCount: Double
            public var runnerGroups: [OctoKit.RunnerGroupsEnterprise]

            public init(totalCount: Double, runnerGroups: [OctoKit.RunnerGroupsEnterprise]) {
                self.totalCount = totalCount
                self.runnerGroups = runnerGroups
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.totalCount = try values.decode(Double.self, forKey: "total_count")
                self.runnerGroups = try values.decode([OctoKit.RunnerGroupsEnterprise].self, forKey: "runner_groups")
            }
        }

        private func makeGetQuery(_ perPage: Int?, _ page: Int?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(perPage, forKey: "per_page")
            encoder.encode(page, forKey: "page")
            return encoder.items
        }

        /// Create a self-hosted runner group for an enterprise
        ///
        /// Creates a new self-hosted runner group for an enterprise.
        /// 
        /// You must authenticate using an access token with the `manage_runners:enterprise` scope to use this endpoint.
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/enterprise-admin#create-self-hosted-runner-group-for-an-enterprise)
        public func post(_ body: PostRequest) -> Request<OctoKit.RunnerGroupsEnterprise> {
            Request(path: path, method: "POST", body: body, id: "enterprise-admin/create-self-hosted-runner-group-for-enterprise")
        }

        public struct PostRequest: Encodable {
            /// Name of the runner group.
            public var name: String
            /// Visibility of a runner group. You can select all organizations or select individual organization. Can be one of: `all` or `selected`
            public var visibility: Visibility?
            /// List of organization IDs that can access the runner group.
            public var selectedOrganizationIDs: [Int]?
            /// List of runner IDs to add to the runner group.
            public var runners: [Int]?
            /// Whether the runner group can be used by `public` repositories.
            public var allowsPublicRepositories: Bool?

            /// Visibility of a runner group. You can select all organizations or select individual organization. Can be one of: `all` or `selected`
            public enum Visibility: String, Codable, CaseIterable {
                case selected
                case all
            }

            public init(name: String, visibility: Visibility? = nil, selectedOrganizationIDs: [Int]? = nil, runners: [Int]? = nil, allowsPublicRepositories: Bool? = false) {
                self.name = name
                self.visibility = visibility
                self.selectedOrganizationIDs = selectedOrganizationIDs
                self.runners = runners
                self.allowsPublicRepositories = allowsPublicRepositories
            }

            public func encode(to encoder: Encoder) throws {
                var values = encoder.container(keyedBy: StringCodingKey.self)
                try values.encode(name, forKey: "name")
                try values.encodeIfPresent(visibility, forKey: "visibility")
                try values.encodeIfPresent(selectedOrganizationIDs, forKey: "selected_organization_ids")
                try values.encodeIfPresent(runners, forKey: "runners")
                try values.encodeIfPresent(allowsPublicRepositories, forKey: "allows_public_repositories")
            }
        }
    }
}
