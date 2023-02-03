//
//  OnboardingInteractor.swift
//  FilmKu
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import UIKit

class HomeInteractor: HomeInteractorInterface {
    
    weak var output: HomeInteractorOutput?
    
    func getMovies() {
        
        if ReachabilityManager.isOnline() {
            
            HomeRepo.shared.getMovies() { [ weak self ] response in
                guard let self = self else { return }
                DispatchQueue.main.async {
                    switch (response) {
                    case let .onSuccess(response):
                        try? UserDefaults.standard.store(object: response, key: .movies)
                        self.output?.didGetMovies(response: response)
                    case let .onFailure(error):
                        self.output?.didFailedGetMovies(error: error)
                    }
                }
            }
            
            // Retrive from Cashing
        }
        else if HomeRepo.shared.movies != nil {
            output?.didGetMovies(response: HomeRepo.shared.movies!)
        } else {
            output?.didFailedGetMovies(error: APIError(type: .network, message: "No internet connection!".l()))
        }
    }
    
    
}
