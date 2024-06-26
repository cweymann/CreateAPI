// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// The policy that controls the repositories in the organization that are allowed to run GitHub Actions. Can be one of: `all`, `none`, or `selected`.
public enum EnabledRepositories: String, CaseIterable, Codable {
    case all
    case `none`
    case selected
}
