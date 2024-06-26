// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import NaiveDate

public struct Order: Codable {
    public var id: Int64?
    public var petID: Int64?
    public var quantity: Int32?
    public var shipDate: Date?
    /// Order Status
    public var status: Status?
    public var isComplete: Bool?

    /// Order Status
    public enum Status: String, CaseIterable, Codable {
        case placed
        case approved
        case delivered
    }

    public init(id: Int64? = nil, petID: Int64? = nil, quantity: Int32? = nil, shipDate: Date? = nil, status: Status? = nil, isComplete: Bool? = false) {
        self.id = id
        self.petID = petID
        self.quantity = quantity
        self.shipDate = shipDate
        self.status = status
        self.isComplete = isComplete
    }

    private enum CodingKeys: String, CodingKey {
        case id
        case petID = "petId"
        case quantity
        case shipDate
        case status
        case isComplete = "complete"
    }
}
