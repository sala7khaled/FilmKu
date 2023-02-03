//
//  UsersRepo.swift
//  FilmKu
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import UIKit

class HomeRepo: Repo {
    
    static let shared = HomeRepo()
    
    var movies: Movie? {
        return try? UserDefaults.standard.retrive(type: Movie.self, key: .movies)
    }
    
    func getMovies(_ completion: @escaping (APIResponse<Movie>) -> ()) {
        provider.request(type: Movie.self, service: Api.Movies.getMovies, completion: completion)
    }

}
