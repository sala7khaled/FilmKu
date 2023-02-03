//
//  Api.swift
//  FilmKu
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import Foundation

/**
 APIConfigurations
 
 - parameter development: For the application during the development phase.
 - parameter stage: For the application during the testing phase.
 - parameter production: For the application during the launching on App store.
 */

let API = Api(config: .development)

enum APIConfiguration {

    case development
    case stage
    case production
}

final class Api {
    
    let config: APIConfiguration
    
    var baseUrl: String {
        switch config {
        case .development:
            return "https://imdb-api.com/API/"
        case .stage:
            return "https://imdb-api.com/API/"
        case .production:
            return "https://imdb-api.com/API/"
        }
    }
    
    var API_KEY = "k_vizmc9cr/"
    
    init(config: APIConfiguration) {
        self.config = config
    }
     
    // MARK: - MOVIES
    
    let SERVICE_MOVIES = "Top250Movies/"
    
}
