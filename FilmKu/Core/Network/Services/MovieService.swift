//
//  UsersService.swift
//  FilmKu
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import Foundation

extension Api {
    
    enum  Movies: ServiceProtocol {
        
        case getMovies
        
        var path: String {
            switch self {
            case .getMovies:
                return API.SERVICE_MOVIES + API.API_KEY
            }
        }
        
        var method: HTTPMethod {
            switch self {
            case .getMovies:
                return .GET
            }
        }
        
        var parameters: [String : Any]? {
            switch self {
            case .getMovies:
                return nil
            }
        }
        
        var headers: Headers? {
            switch self {
            case .getMovies:
                return nil
            }
        }
        
        var body: Any? {
            switch self {
            case .getMovies:
                return nil
            }
        }
    }
    
    
}
