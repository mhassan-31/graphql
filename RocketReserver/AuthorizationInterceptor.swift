//
//  AuthorizationInterceptor.swift
//  RocketReserver
//
//  Created by Muhammad Hassan on 2026-07-19.
//

import Foundation
import Apollo
import ApolloAPI
import KeychainSwift

struct AuthorizationInterceptor: HTTPInterceptor {
    func intercept(
      request: URLRequest,
      next: NextHTTPInterceptorFunction
    ) async throws -> HTTPResponse {
        var request = request
        let keychain = KeychainSwift()
        if let token = await keychain.get(LoginView.loginKeychainKey) {
            request.addValue(token, forHTTPHeaderField: "Authorization")
        }
        return try await next(request)
    }
}
