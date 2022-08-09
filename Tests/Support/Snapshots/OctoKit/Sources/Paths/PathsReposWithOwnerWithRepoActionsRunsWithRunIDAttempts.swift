// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import HTTPHeaders
import URLQueryEncoder

extension Paths.Repos.WithOwner.WithRepo.Actions.Runs.WithRunID {
    public var attempts: Attempts {
        Attempts(path: path + "/attempts")
    }

    public struct Attempts {
        /// Path: `/repos/{owner}/{repo}/actions/runs/{run_id}/attempts`
        public let path: String
    }
}