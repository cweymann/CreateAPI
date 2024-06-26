// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Issues.WithIssueNumber.Reactions {
    public func reactionID(_ reactionID: Int) -> WithReactionID {
        WithReactionID(path: "\(path)/\(reactionID)")
    }

    public struct WithReactionID {
        /// Path: `/repos/{owner}/{repo}/issues/{issue_number}/reactions/{reaction_id}`
        public let path: String

        /// Delete an issue reaction
        ///
        /// **Note:** You can also specify a repository by `repository_id` using the route `DELETE /repositories/:repository_id/issues/:issue_number/reactions/:reaction_id`.
        /// 
        /// Delete a reaction to an [issue](https://docs.github.com/rest/reference/issues/).
        ///
        /// [API method documentation](https://docs.github.com/rest/reference/reactions#delete-an-issue-reaction)
        public var delete: Request<Void> {
            Request(path: path, method: "DELETE", id: "reactions/delete-for-issue")
        }
    }
}
