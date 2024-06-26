// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Sets the state of the code scanning alert. Can be one of `open` or `dismissed`. You must provide `dismissed_reason` when you set the state to `dismissed`.
public enum CodeScanningAlertSetState: String, CaseIterable, Codable {
    case `open`
    case dismissed
}
