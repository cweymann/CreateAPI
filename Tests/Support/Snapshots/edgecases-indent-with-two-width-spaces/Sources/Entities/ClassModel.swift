// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

/// Model for testing model with "_class" property
public struct ClassModel: Codable {
  public var `class`: String?

  public init(`class`: String? = nil) {
    self.class = `class`
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: StringCodingKey.self)
    self.class = try values.decodeIfPresent(String.self, forKey: "_class")
  }

  public func encode(to encoder: Encoder) throws {
    var values = encoder.container(keyedBy: StringCodingKey.self)
    try values.encodeIfPresent(`class`, forKey: "_class")
  }
}