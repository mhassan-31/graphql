//
//  ApolloClient+Setup.swift
//  RocketReserver
//
//  Created by Muhammad Hassan on 2026-07-19.
//

import Apollo
import Foundation

extension ApolloClient {
//    static let shared: ApolloClient = {
//        return ApolloClient(url: URL(string: "https://apollo-fullstack-tutorial.herokuapp.com/graphql")!)
//    }()
    
    static let shared: ApolloClient = {
        let cache = InMemoryNormalizedCache()
        let store = ApolloStore(cache: cache)
        let url = URL(string: "https://apollo-fullstack-tutorial.herokuapp.com/graphql")!
        
        let networkTransport = RequestChainNetworkTransport(
            urlSession: URLSession.shared,
            interceptorProvider: NetworkInterceptorProvider(),
            store: store,
            endpointURL: url
        )
        return ApolloClient(networkTransport: networkTransport, store: store)
    }()
}
