//
//  LaunchListViewModel.swift
//  RocketPicker
//
//  Created by Piotr Woźniak on 30/07/2023.
//

import Foundation
import RocketPickerAPI
import Apollo

class LaunchListViewModel: ObservableObject {
    @Published var launches: LaunchListQuery.Data.Launches?
    @Published var appAlert: AppAlert?
    @Published var errorBool: Bool?
    
    init() {
        fetch()
    }
    
    func fetch() {
        Network.shared.apollo.fetch(query: LaunchListQuery()) { [weak self] result in
            guard let self = self else { return }
            
            switch result {
            case .success(let graphQLResult):
                if let launchConnection = graphQLResult.data?.launches {
                    self.appAlert = nil
                    self.launches = launchConnection
                }
                if let errors = graphQLResult.errors {
                    self.appAlert = .errors(errors: errors)
                }
            case .failure(let error):
                self.appAlert = .error(error: error)
            }
        }
    }
}

enum AppAlert {
    case error(error: Error)
    case errors(errors: [GraphQLError])
    
    var customSystemErrorMessage: String {
        switch self {
        case .error(let error):
            return error.localizedDescription
        case .errors(let errors):
            return errors.description
        }
    }
    var customTextErrorMessage: String {
        switch self {
        case .error:
            return "Failed to load data"
        case .errors:
            return "Failed to decode data"
        }
    }

}
