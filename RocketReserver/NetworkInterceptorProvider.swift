//
//  NetworkInterceptorProvider.swift
//  RocketReserver
//
//  Created by Muhammad Hassan on 2026-07-19.
//

import Foundation
import Apollo
import ApolloAPI

struct NetworkInterceptorProvider: InterceptorProvider {
    
    func httpInterceptors<Operation: GraphQLOperation>(for operation: Operation) -> [any HTTPInterceptor] {
        return [AuthorizationInterceptor()] + DefaultInterceptorProvider.shared.httpInterceptors(for: operation)
    }
}
