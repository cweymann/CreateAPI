// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// The type of reviewer. Must be one of: `User` or `Team`
///
/// Example: "User"
public enum DeploymentReviewerType: String, CaseIterable, Codable {
    case user = "User"
    case team = "Team"
}
