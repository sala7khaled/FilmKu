//
//  OnboardingPresenter.swift
//  FilmKu
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import UIKit

class HomePresenter: HomePresenterInterface {

    weak var view: HomeView?
    var router: HomeRouterInterface!
    var interactor: HomeInteractorInterface!
    
    var movies: [Item]! = []
    
    func viewDidLoad() {
        view?.showViewLoading()
        interactor.getMovies()
    }

    func showError(with message: String?) {
        router.presentError(with: message)
    }
}

    
extension HomePresenter: HomeInteractorOutput {
    
    func didGetMovies(response: Movie) {
        self.movies = response.items
        view?.hideViewLoading()
        view?.applyFilter()
    }
    
    func didFailedGetMovies(error: APIError) {
        view?.hideViewLoading()
        router.presentError(with: error.message)
    }
    
}
