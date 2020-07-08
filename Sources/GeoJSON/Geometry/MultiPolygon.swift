public struct MultiPolygon: Codable {
    public let coordinates: [Polygon]

    public init(coordinates: [Polygon]) {
        self.coordinates = coordinates
    }

    public init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        self.coordinates = try container.decode([Polygon].self)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(coordinates)
    }
}