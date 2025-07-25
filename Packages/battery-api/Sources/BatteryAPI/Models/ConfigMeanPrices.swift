//
// ConfigMeanPrices.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ConfigMeanPrices: Codable, JSONEncodable, Hashable {

    public var batteryMeanPriceSwap: Int
    public var batteryMeanPriceJetton: Int
    public var batteryMeanPriceNft: Int
    public var batteryMeanPriceTronUsdt: Int?

    public init(batteryMeanPriceSwap: Int, batteryMeanPriceJetton: Int, batteryMeanPriceNft: Int, batteryMeanPriceTronUsdt: Int? = nil) {
        self.batteryMeanPriceSwap = batteryMeanPriceSwap
        self.batteryMeanPriceJetton = batteryMeanPriceJetton
        self.batteryMeanPriceNft = batteryMeanPriceNft
        self.batteryMeanPriceTronUsdt = batteryMeanPriceTronUsdt
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case batteryMeanPriceSwap = "battery_mean_price_swap"
        case batteryMeanPriceJetton = "battery_mean_price_jetton"
        case batteryMeanPriceNft = "battery_mean_price_nft"
        case batteryMeanPriceTronUsdt = "battery_mean_price_tron_usdt"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(batteryMeanPriceSwap, forKey: .batteryMeanPriceSwap)
        try container.encode(batteryMeanPriceJetton, forKey: .batteryMeanPriceJetton)
        try container.encode(batteryMeanPriceNft, forKey: .batteryMeanPriceNft)
        try container.encodeIfPresent(batteryMeanPriceTronUsdt, forKey: .batteryMeanPriceTronUsdt)
    }
}

