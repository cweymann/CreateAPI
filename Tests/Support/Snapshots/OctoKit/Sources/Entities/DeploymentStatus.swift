// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// The status of a deployment.
public struct DeploymentStatus: Codable {
    /// Example: "https://api.github.com/repos/octocat/example/deployments/42/statuses/1"
    public var url: URL
    public var id: Int
    /// Example: "MDE2OkRlcGxveW1lbnRTdGF0dXMx"
    public var nodeID: String
    /// The state of the status.
    ///
    /// Example: "success"
    public var state: State
    /// Simple User
    public var creator: SimpleUser?
    /// A short description of the status.
    ///
    /// Example: "Deployment finished successfully."
    public var description: String
    /// The environment of the deployment that the status is for.
    ///
    /// Example: "production"
    public var environment: String?
    /// Deprecated: the URL to associate with this status.
    ///
    /// Example: "https://example.com/deployment/42/output"
    public var targetURL: URL
    /// Example: "2012-07-20T01:19:13Z"
    public var createdAt: Date
    /// Example: "2012-07-20T01:19:13Z"
    public var updatedAt: Date
    /// Example: "https://api.github.com/repos/octocat/example/deployments/42"
    public var deploymentURL: URL
    /// Example: "https://api.github.com/repos/octocat/example"
    public var repositoryURL: URL
    /// The URL for accessing your environment.
    ///
    /// Example: "https://staging.example.com/"
    public var environmentURL: URL?
    /// The URL to associate with this status.
    ///
    /// Example: "https://example.com/deployment/42/output"
    public var logURL: URL?
    /// GitHub app
    ///
    /// GitHub apps are a new way to extend GitHub. They can be installed directly on organizations and user accounts and granted access to specific repositories. They come with granular permissions and built-in webhooks. GitHub apps are first class actors within GitHub.
    public var performedViaGithubApp: Integration?

    /// The state of the status.
    ///
    /// Example: "success"
    public enum State: String, Codable, CaseIterable {
        case error
        case failure
        case inactive
        case pending
        case success
        case queued
        case inProgress = "in_progress"
    }

    public init(url: URL, id: Int, nodeID: String, state: State, creator: SimpleUser? = nil, description: String = "", environment: String? = "", targetURL: URL, createdAt: Date, updatedAt: Date, deploymentURL: URL, repositoryURL: URL, environmentURL: URL? = nil, logURL: URL? = nil, performedViaGithubApp: Integration? = nil) {
        self.url = url
        self.id = id
        self.nodeID = nodeID
        self.state = state
        self.creator = creator
        self.description = description
        self.environment = environment
        self.targetURL = targetURL
        self.createdAt = createdAt
        self.updatedAt = updatedAt
        self.deploymentURL = deploymentURL
        self.repositoryURL = repositoryURL
        self.environmentURL = environmentURL
        self.logURL = logURL
        self.performedViaGithubApp = performedViaGithubApp
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.url = try values.decode(URL.self, forKey: "url")
        self.id = try values.decode(Int.self, forKey: "id")
        self.nodeID = try values.decode(String.self, forKey: "node_id")
        self.state = try values.decode(State.self, forKey: "state")
        self.creator = try values.decodeIfPresent(SimpleUser.self, forKey: "creator")
        self.description = try values.decode(String.self, forKey: "description")
        self.environment = try values.decodeIfPresent(String.self, forKey: "environment")
        self.targetURL = try values.decode(URL.self, forKey: "target_url")
        self.createdAt = try values.decode(Date.self, forKey: "created_at")
        self.updatedAt = try values.decode(Date.self, forKey: "updated_at")
        self.deploymentURL = try values.decode(URL.self, forKey: "deployment_url")
        self.repositoryURL = try values.decode(URL.self, forKey: "repository_url")
        self.environmentURL = try values.decodeIfPresent(URL.self, forKey: "environment_url")
        self.logURL = try values.decodeIfPresent(URL.self, forKey: "log_url")
        self.performedViaGithubApp = try values.decodeIfPresent(Integration.self, forKey: "performed_via_github_app")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(url, forKey: "url")
        try values.encode(id, forKey: "id")
        try values.encode(nodeID, forKey: "node_id")
        try values.encode(state, forKey: "state")
        try values.encodeIfPresent(creator, forKey: "creator")
        try values.encode(description, forKey: "description")
        try values.encodeIfPresent(environment, forKey: "environment")
        try values.encode(targetURL, forKey: "target_url")
        try values.encode(createdAt, forKey: "created_at")
        try values.encode(updatedAt, forKey: "updated_at")
        try values.encode(deploymentURL, forKey: "deployment_url")
        try values.encode(repositoryURL, forKey: "repository_url")
        try values.encodeIfPresent(environmentURL, forKey: "environment_url")
        try values.encodeIfPresent(logURL, forKey: "log_url")
        try values.encodeIfPresent(performedViaGithubApp, forKey: "performed_via_github_app")
    }
}
