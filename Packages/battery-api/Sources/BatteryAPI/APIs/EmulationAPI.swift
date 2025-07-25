//
// EmulationAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

open class EmulationAPI {

    /**

     - parameter xTonConnectAuth: (header)  
     - parameter emulateMessageToWalletRequest: (body) bag-of-cells serialized to base64 
     - parameter acceptLanguage: (header)  (optional, default to "en")
     - returns: [String: AnyCodable]
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func emulateMessageToWallet(xTonConnectAuth: String, emulateMessageToWalletRequest: EmulateMessageToWalletRequest, acceptLanguage: String? = nil) async throws -> [String: AnyCodable] {
        return try await emulateMessageToWalletWithRequestBuilder(xTonConnectAuth: xTonConnectAuth, emulateMessageToWalletRequest: emulateMessageToWalletRequest, acceptLanguage: acceptLanguage).execute().body
    }

    /**
     - POST /wallet/emulate
     - Emulate sending message to blockchain
     - responseHeaders: [Allowed-By-Battery(Bool), Supported-By-Battery(Bool), Reject-Reason(String), X-Battery-Protocol-Name(String)]
     - parameter xTonConnectAuth: (header)  
     - parameter emulateMessageToWalletRequest: (body) bag-of-cells serialized to base64 
     - parameter acceptLanguage: (header)  (optional, default to "en")
     - returns: RequestBuilder<[String: AnyCodable]> 
     */
    open class func emulateMessageToWalletWithRequestBuilder(xTonConnectAuth: String, emulateMessageToWalletRequest: EmulateMessageToWalletRequest, acceptLanguage: String? = nil) -> RequestBuilder<[String: AnyCodable]> {
        let localVariablePath = "/wallet/emulate"
        let localVariableURLString = BatteryAPIAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: emulateMessageToWalletRequest)

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            "Content-Type": "application/json",
            "Accept-Language": acceptLanguage?.encodeToJSON(),
            "X-TonConnect-Auth": xTonConnectAuth.encodeToJSON(),
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[String: AnyCodable]>.Type = BatteryAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }

    /**

     - parameter name: (path)  
     - returns: [String: AnyCodable]
     */
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getJettonMetadata(name: String) async throws -> [String: AnyCodable] {
        return try await getJettonMetadataWithRequestBuilder(name: name).execute().body
    }

    /**
     - GET /jetton-metadata/{name}.json
     - parameter name: (path)  
     - returns: RequestBuilder<[String: AnyCodable]> 
     */
    open class func getJettonMetadataWithRequestBuilder(name: String) -> RequestBuilder<[String: AnyCodable]> {
        var localVariablePath = "/jetton-metadata/{name}.json"
        let namePreEscape = "\(APIHelper.mapValueToPathItem(name))"
        let namePostEscape = namePreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{name}", with: namePostEscape, options: .literal, range: nil)
        let localVariableURLString = BatteryAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[String: AnyCodable]>.Type = BatteryAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters, requiresAuthentication: false)
    }
}
