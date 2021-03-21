import Foundation

public struct Exchange: Codable {
    public let rates: [String: Double]
    public let base, date: String
}
