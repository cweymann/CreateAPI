// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// The permissions policy that controls the actions that are allowed to run. Can be one of: `all`, `local_only`, or `selected`.
public enum AllowedActions: String, CaseIterable, Codable {
    case all
    case localOnly = "local_only"
    case selected
}
