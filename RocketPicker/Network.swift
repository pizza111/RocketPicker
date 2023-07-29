//
//  Network.swift
//  RocketPicker
//
//  Created by Piotr Woźniak on 29/07/2023.
//

import Foundation
import Apollo

class Network {
    static let shared = Network()

    let url = "https://apollo-fullstack-tutorial.herokuapp.com/graphql"
    
    private(set) lazy var apollo = ApolloClient(url: URL(string: "https://apollo-fullstack-tutorial.herokuapp.com/graphql")!)
}
